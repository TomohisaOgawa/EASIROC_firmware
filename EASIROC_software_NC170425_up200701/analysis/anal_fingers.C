/*
	20/06/15

*/
#include <utility>
#include <vector>
#include <sstream>
#include <fstream>
#include <iostream>

#include "TH1F.h"
#include "TH2F.h"
#include "TF1.h"
#include "TFile.h"
#include "TLine.h"
#include "TCanvas.h"
#include "TTree.h"
#include "TStyle.h"
#include "TSpectrum.h"
#include "TGraphErrors.h"

const double cutc2 = 6.0;
const double cutp1 = 1.0;
const double cutp4 = 1.0;  
const double cutp7 = 1.5;  

//std::vector <double> GetPeakX(TH1F *h1, int maxPeaks = 10)
std::vector <std::pair <double, double> > GetPeakX(TH1F *h1, int NSmooth = 100, double peakSigma = 5)
{
    TH1F *tmp = new TH1F(*h1);
    double rebin = 1;
    tmp->Rebin(rebin);
    tmp->Smooth(NSmooth); 

	//std::vector <double> ret;
   std::vector <std::pair <double, double> > ret;
#if 0
    const int nBins = tmp->GetXaxis()->GetNbins();
    int nthBin = 0;
    for ( ; nthBin < nBins; nthBin++) {
    	   int a = tmp->GetBinContent(nthBin+1);
      	int b = tmp->GetBinContent(nthBin+2);
      	int c = tmp->GetBinContent(nthBin+3); //
      	int d = tmp->GetBinContent(nthBin+4); //
      	int e = tmp->GetBinContent(nthBin+5);
      	int f = tmp->GetBinContent(nthBin+6);
      	int g = tmp->GetBinContent(nthBin+7);
        if ( 50< a && 
             //a < b && b < c && c > d && d > e ) {
             a < b && b < c && c < d && d > e && e > f && f > g ) {
            double x = (double) tmp->GetXaxis()->GetBinCenter(nthBin+4);
            int yval= tmp->GetBinContent( nthBin+4 ) / rebin;
            //ret.push_back( std::pair <double, double>(x,yval) );
         	//if ( ret.size()>5 ) break;
            break;
        }
    }
#endif

#if 1
	 const int maxPeaks = 10;
    TSpectrum *spec = new TSpectrum(maxPeaks);
    spec->Search(tmp, peakSigma, "new");
    int getPeaks = spec->GetNPeaks();
    double* xpeaks = spec->GetPositionX();
    for (int j=0; j<maxPeaks; ++j) {
       	for (int k=j+1; k<maxPeaks; ++k) {
        	if (xpeaks[j] > xpeaks[k]) {
        		double tmp =  xpeaks[j];
        		xpeaks[j] = xpeaks[k];
        		xpeaks[k] = tmp;
      	}
    	}
  	}        

   for (int j=0; j<maxPeaks; ++j) {
      if (xpeaks[j]<500) continue;
      //cerr << j << " " << xpeaks[j] << endl;
      int ith = tmp->FindBin( xpeaks[j] );
      int yval= tmp->GetBinContent( ith ) / rebin;
      ret.push_back( std::pair <double, double>(xpeaks[j],yval) );
   }
#endif
   delete spec;
   delete tmp;
   return ret;
}


TF1 *DoFitting(TH1F *h1, std::vector <std::pair <double, double> > peaksXY, int NSmooth = 100)
{
    TH1F *tmp = new TH1F(*h1);
    double rebin = 1;
    tmp->Rebin(rebin);
    tmp->Smooth(NSmooth); 

    TF1 *dgaus = new TF1("dgaus","gaus(0)+gaus(3)",        0,2000);
    TF1 *tgaus = new TF1("tgaus","gaus(0)+gaus(3)+gaus(6)",0,2000);
    double chi2, Ndof;
	double pe1, pe4, pe7;

    int sttPeak = 2 ;
    //int sttPeak = 1 + j / ( iteration / (iteration/2) );   
    double dval = peaksXY[sttPeak+1].first - peaksXY[sttPeak+0].first;
    if (dval<20) dval = peaksXY[2].first - peaksXY[1].first;
    if (dval<20) dval = peaksXY[4].first - peaksXY[3].first;

    int j=0;
    for (; j<100; j++) {
      double mean0 = peaksXY[sttPeak].first + 0*dval ;//+ (double)j*0.02;
      double mean1 = peaksXY[sttPeak].first + 1*dval ;//- (double)j*0.02;
      double mean2 = peaksXY[sttPeak].first + 2*dval ;//+ (double)j*0.02;
      double sigma = 4;//dval/10.; 
      double fitr1 = mean0 - sigma ;//- 0.002 * (double)j;
      double fitr2 = mean1 + sigma + 0.01 * (double)j;
      double fitr3 = mean2 + sigma + 0.01 * (double)j;
      dgaus->SetParameters(peaksXY[sttPeak+0].second, mean0, sigma,
                           peaksXY[sttPeak+1].second, mean1, sigma);
      tgaus->SetParameters(peaksXY[sttPeak+0].second, mean0, sigma,
                           peaksXY[sttPeak+1].second, mean1, sigma,
                           peaksXY[sttPeak+2].second, mean2, sigma);
      dgaus->SetParLimits(1, mean0-2*sigma, mean0+2*sigma);
      dgaus->SetParLimits(4, mean1-2*sigma, mean1+2*sigma);
      dgaus->SetParLimits(2, 4., 9.);
      dgaus->SetParLimits(5, 4., 9.);
      //tgaus->SetParLimits(0, peaksXY[sttPeak+0].second*0.6, peaksXY[sttPeak+0].second*1.6);
      //tgaus->SetParLimits(3, peaksXY[sttPeak+1].second*0.6, peaksXY[sttPeak+1].second*1.6);
      //tgaus->SetParLimits(6, peaksXY[sttPeak+2].second*0.6, peaksXY[sttPeak+2].second*1.6);
      tgaus->SetParLimits(1, mean0-2*sigma, mean0+2*sigma);
      tgaus->SetParLimits(4, mean1-2*sigma, mean1+2*sigma);
      tgaus->SetParLimits(7, mean2-2*sigma, mean2+2*sigma);
      tgaus->SetParLimits(2, 4., 9.);
      tgaus->SetParLimits(5, 4., 9.);
      tgaus->SetParLimits(8, 4., 9.);
#if 0 
      tmp->Fit(dgaus,"NRQ","same", fitr1, fitr2);
      dgaus->SetParameters( dgaus->GetParameters() );
      h1->Fit(dgaus,"MNRQ","same", fitr1, fitr2);
      chi2 = dgaus->GetChisquare();
      Ndof = dgaus->GetNDF();
      pe1  = dgaus->GetParError(1);
      pe4  = dgaus->GetParError(4);
      //cerr << "chi2/Ndof = " << chi2/(double)Ndof << endl;
      if ( pe1 < 1.0 && pe4 < 1.0 && // depends on #of events for this peak 
           0.6 < chi2/Ndof && chi2/Ndof < 5.0 ) break;
#endif
#if 1
      tmp->Fit(tgaus,"NRQ","same", fitr1, fitr3);
      tgaus->SetParameters( tgaus->GetParameters() );
      h1->Fit(tgaus,"MNRQ","same", fitr1, fitr3);
      chi2 = tgaus->GetChisquare();
      Ndof = tgaus->GetNDF();
      pe1  = tgaus->GetParError(1);
      pe4  = tgaus->GetParError(4);
      pe7  = tgaus->GetParError(7);
      //cerr << "chi2/Ndof = " << chi2/(double)Ndof << endl;
      if ( pe1 < cutp1 && pe4 < cutp4 && pe7 < cutp7 && // depends on #of events for this peak 
           chi2/Ndof < cutc2 ) break;
#endif
   }
   cerr << "  dval = " << dval 
        << ", ite = " << j
        << ", chi2/Ndof = " << chi2/Ndof 
        << ", e1 = " << pe1
        << ", e4 = " << pe4
        << ", e7 = " << pe7
        << endl;
   delete tmp;
   delete dgaus;
   return tgaus;
}


void DrawPeakPosition(std::vector <std::pair <double, double> > peaksXY)
{
	const int NPeaks = peaksXY.size();
    for (int j=0; j<NPeaks; j++) {
        TLine *line = new TLine(peaksXY[j].first, 0, peaksXY[j].first, peaksXY[j].second);
        line->SetLineWidth(1);
        line->SetLineColor(2);
        line->Draw("same");
    }
}


void SetGraph(TGraphErrors *ge, double *inpQ, std::vector <double> xpeaks)
{
	ge->SetPoint     (0, inpQ[0], xpeaks[0]);
    ge->SetPointError(0, inpQ[0]*0.01, 4./sqrt(12.));
    ge->SetPoint     (1, inpQ[1], xpeaks[1]);
    ge->SetPointError(1, inpQ[1]*0.01, 4./sqrt(12.));
    ge->SetPoint     (2, inpQ[2], xpeaks[2]);
    ge->SetPointError(2, inpQ[2]*0.01, 4./sqrt(12.));
}

#include "anal_statushv.C" // GetHVvalues()
#include "anal_utility.C" // GetFileVaule3()


#define OUTPUTSUMMARY


//void anal_fingers(TString dir = "../data/")
//void anal_fingers(TString dir = "../data_store/easiroc200623_farm3_led_temp20_SAMTEC1.0mNo1_Ecable0.5mNo1213_KEK15/")
//void anal_fingers(TString dir = "../data_store/easiroc200623_farm3_led_temp20_SAMTEC2.0mNo1_Ecable0.5mNo1213_KEK15/")
//void anal_fingers(TString dir = "../data_store/easiroc200623_farm3_led_temp20_SAMTEC1.0mNo1_Ecable1.0mNo12_KEK15/")
//void anal_fingers(TString dir = "../data_store/easiroc200623_farm3_led_temp20_SAMTEC2.0mNo1_Ecable1.0mNo12_KEK15/")
//void anal_fingers(TString dir = "../data_store/easiroc200624_farm1_led_temp20_SAMTEC1.0mNo1_Ecable1.0mNo78_UT18/")
//void anal_fingers(TString dir = "../data_store/easiroc200624_farm1_led_temp20_SAMTEC1.0mNo1_Ecable0.5mNo1011_UT18/")
//void anal_fingers(TString dir = "../data_store/easiroc200625_farm1_led_temp20_10pts_SAMTEC1.0mNo1_Ecable0.5mNo1011_UT18/")
//void anal_fingers(TString dir = "../data_store/data200701_farmX_led_temp20_SAMTEC2.0mNo1_Ecable1.0mNo12_KEK15/")
void anal_fingers(TString dir = "../data_store/data200702_farmX_led_temp20_SAMTEC2.0mNo1_Ecable1.0mNo12_UT18/")
{
	gStyle->SetPalette(55);
    gStyle->SetMarkerStyle(1);
    gStyle->SetMarkerSize(0.8);

	const int sttCh =48;
	const int endCh =49;
    // ----- HV set value
	const int nfs = 11;
    //double voltage[nfs] = {56.4, 56.5, 56.6, 56.7, 56.8, 56.9, 57.0, 57.1, 57.2, 57.3, 57.4};
    double voltage[nfs] = {56.2, 56.3, 56.4, 56.5, 56.6, 56.7, 56.8, 56.9, 57.0, 57.1, 57.2};

	TFile *f[99]={};
	TTree *t[99]={};
    //std::vector <std::vector <double>> retHV;
    std::vector <double> retHV[99];

	for (int i=0; i<nfs; i++) {
		stringstream str1;
		//str << dir << "voltage" << std::fixed << std::setprecision(1) << voltage[i] << ".root" <<ends;
		str1 << dir << "voltage" << std::fixed << std::setprecision(1) << voltage[i] << ".root" <<ends;
		//str << "../data/tmp012.root" <<ends;
		f[i] = new TFile(str1.str().data());
		t[i] = (TTree*) f[i]->Get("tree");

        // ----- HV status file, (put in the same directry)
        stringstream str2;
        str2 << dir << "statusDAC" << std::fixed << std::setprecision(1) << voltage[i] << ".yml" <<ends;
        //retHV.push_back( GetHVvalues(str2.str().data()) );
        retHV[i] = GetHVvalues(str2.str().data());
        cerr << "HV file = " << i << " return HV size = " << retHV[i].size() << endl;  
        if ( retHV[i].size()==0 ) return; // no HV files
 	}

	#if 0 
    for (int i=0; i<6; i++) {
        for (int j=0; j<retHV[i].size(); j++) {
            cerr << i << " " << j << " " << retHV[i][j] << endl;
        }
	}
	return;
	#endif

    // ----- calibration file
    cerr << "Get calibration file: " << endl;
    std::vector <std::pair <double, double>> retCalib;
	//retCalib = GetFileVaule3("../data_store/easiroc200620_calib_farm3_KEK15/");
	//retCalib = GetFileVaule3("../data_store/data200628_farm8_calibFQADC_KEK15/");
	retCalib = GetFileVaule3("../data_store/data200628_farm8_calibFQADC_UT18/");
	cerr << "calib size " << retCalib.size() << endl;

    // -----
    TH1F *h1[99][99];
    TGraphErrors *ge[99]={};

	TCanvas *cADC[nfs][2];
	const double canW = 1500;
	const double canH =  800;

    cerr << "\n iteration...." << endl;
	for (int n=0; n<nfs; n++) {
	//for (int n=0; n<1; n++) {
        stringstream str1, str2;
        str1 << "can_f" << n << "_chip1" <<ends;
        str2 << "can_f" << n << "_chip2" <<ends;
        cADC[n][0] = new TCanvas(str1.str().data(),str1.str().data(),canW,canH);
        cADC[n][0]->Divide(8,4);
        cADC[n][1] = new TCanvas(str2.str().data(),str2.str().data(),canW,canH);
        cADC[n][1]->Divide(8,4);

        for (int i=sttCh; i<endCh; i++) {
        //for (int i=0; i<10; i++) {
        	cADC[n][i/32]->cd(1+i%32);
    		gPad->SetRightMargin(0.01);

			stringstream nam, str, cut;
        	nam << "h_f" << n << "_ch" << i << ends;
			str << "adc>>h_f" << n << "_ch" << i << "(400,700,1100)" << ends;
			//str << "adc:ch>>h2_" << i << "(70,-5,65,1000,-100,4000)" << ends;
			cut << "ch==" << i << ends;

			t[n]->Draw(str.str().data(),cut.str().data(),"");

			h1[n][i] = (TH1F*)gROOT->FindObject(nam.str().data());
			h1[n][i]->GetXaxis()->SetRangeUser(750,1100);
			h1[n][i]->SetMaximum(2000);
     		h1[n][i]->SetLineColor(1);

        	cerr << "f = " << n << ", ch = " << i << endl;
        	//std::vector <double> xpeaks = GetPeakX(h1[i]);
        	//std::vector <std::pair <double, double> > 
            std::vector <std::pair <double, double> > peaksXY;
            double chi2, Ndof, pe1, pe4, pe7;
			TF1 *tgaus;

 			for (int q=0; q<10; q++) {
                for (int p=0; p<2; p++) {
					peaksXY = GetPeakX(h1[n][i], 2000 - 100*q, 5+p);
		  			const int NPeaks = peaksXY.size(); 
        			if ( NPeaks<3 ) continue;

        			h1[n][i]->Draw("same");
        			tgaus = DoFitting(h1[n][i], peaksXY, 2000 - 100*q);
	        		chi2 = tgaus->GetChisquare();
	        		Ndof = tgaus->GetNDF();
	        		pe1  = tgaus->GetParError(1);
	        		pe4  = tgaus->GetParError(4);
	        		pe7  = tgaus->GetParError(7);
                    #if 0
	        		cerr << "chi2/Ndof = " << chi2/Ndof
	                     << ", e1 = " << pe1
	                     << ", e4 = " << pe4
	                     << ", e7 = " << pe7
	                     << endl;
                     #endif
                    if ( pe1 < cutp1 && pe4 < cutp4 && pe7 < cutp7 && // depends on #of events for this peak 
                         chi2/Ndof < cutc2 ) break;
                }
                if ( pe1 < cutp1 && pe4 < cutp4 && pe7 < cutp7 && // depends on #of events for this peak 
                     chi2/Ndof < cutc2 ) break;
			}

         	DrawPeakPosition( peaksXY );

	  		double p1 = tgaus->GetParameter(1);
	      	double p4 = tgaus->GetParameter(4);
	      	double p7 = tgaus->GetParameter(7);
	      	pe1 = tgaus->GetParError(1);
	      	pe4 = tgaus->GetParError(4);
	      	pe7 = tgaus->GetParError(7);
			double d1 = p4 - p1;
			double d2 = p7 - p4;
			double de1= sqrt( pe4*pe4 + pe1*pe1 );
			double de2= sqrt( pe7*pe7 + pe4*pe4 );
			tgaus->SetLineColor(4);
		    tgaus->Draw("same");

		    if (!ge[i] ) ge[i] = new TGraphErrors();
		    int nth = ge[i]->GetN();
            //double voltageIN = voltage[n];
            //double voltageIN = retHV[n][64];
            double voltageIN = retHV[n][64] - retHV[n][i];
		    ge[i]->SetPoint     (nth, voltageIN, (d1 + d2)/2.);
		    ge[i]->SetPointError(nth,     0.005, (de1+de2)/2.);
	    }
	}


    TCanvas *cVbd[2];
    cVbd[0] = new TCanvas("cVbd0","cVbd0",canW,canH);
    cVbd[0]->Divide(8,4);
    cVbd[1] = new TCanvas("cVbd1","cVbd1",canW,canH);
    cVbd[1]->Divide(8,4);

  	 TF1 *f2 = new TF1("f2","(x+[0])*[1]",0,100);

	TGraphErrors *gVbd = new TGraphErrors();
	TGraphErrors *gGain= new TGraphErrors();

#ifdef OUTPUTSUMMARY
    stringstream str3, str4;
    str3 << dir << "summary_MPPCsVop.csv" << ends;
    str4 << dir << "summary_MPPCsVbd.csv" << ends;
    ofstream outf1(str3.str().data());
    ofstream outf2(str4.str().data());
#endif

    for (int i=sttCh; i<endCh; i++) {
    //for (int i=0; i<10; i++) {
        cVbd[i/32]->cd(1+i%32);
        gPad->SetRightMargin(0.01);
        ge[i]->Draw("ape*");
        ge[i]->GetXaxis()->SetLimits(50,60);
        ge[i]->GetYaxis()->SetRangeUser(0,40);

        f2->SetParameters(-52.5,6.0);
    	ge[i]->Fit(f2,"RMQ","same",0,100); // fit
        cerr << i << endl;

        for (int j=0; j<ge[i]->GetN(); j++) {
            double gx = ge[i]->GetX()[j];
            double gy = ge[i]->GetY()[j];
            double gyE= ge[i]->GetErrorY(j);
            double fy = ((TF1*) ge[i]->GetFunction("f2"))->Eval(gx);
            double vv = pow( (fy-gy)/gyE, 2);
            cerr << "fy = " << fy << " gy = " << gy << " chi2 = " << vv << endl;
            if ( vv>20 && gyE<100) {
                cerr << " => give large error" << endl;
				ge[i]->SetPointError(j,0.005,999);
                ge[i]->Fit(f2,"RMQ","same",0,100); // fit
                j=0;
			}
		}

        //((TF1*) ge[i]->GetFunction("f2"))->SetLineColor(51+i);
        double chi2 = ((TF1*) ge[i]->GetFunction("f2"))->GetChisquare();
        double Ndof = ((TF1*) ge[i]->GetFunction("f2"))->GetNDF();
        double p0   = ((TF1*) ge[i]->GetFunction("f2"))->GetParameter(0);
        double pe0  = ((TF1*) ge[i]->GetFunction("f2"))->GetParError(0);

        double Vop    = -p0 + 5;
        double dVop   = ((TF1*) ge[i]->GetFunction("f2"))->Eval(Vop);
        double diffC  = 1./5.;
        double fQADC  = retCalib[i].first * diffC;
        double fQADCEr= retCalib[i].second * diffC;
        double gainVop= ( dVop  * fQADC ) / 0.0001602; 

        gVbd->SetPoint     (gVbd->GetN()  , i, -p0);
        gVbd->SetPointError(gVbd->GetN()-1, 0, pe0);
        gGain->SetPoint    (gGain->GetN() , i, gainVop);

        cerr << i << setw(4) << setprecision(3) << setiosflags(ios::fixed) 
                  << " Vop = " << Vop << " gain_Vop = " << gainVop << " dVop = " << dVop 
                  << " Vbd = " << -p0 << " +/- " << pe0 
                  << " fQ/ADC = " << fQADC  << " +/- " << fQADCEr  
                  << endl;
       for (int j=0; j<ge[i]->GetN(); j++) 
            cerr  << setw(4) << setprecision(3) << setiosflags(ios::fixed)
                  << " " << ge[i]->GetX()[j]
                  << " " << ge[i]->GetY()[j]
                  << " " << ge[i]->GetErrorY(j);
       cerr << endl;

#ifdef OUTPUTSUMMARY
        outf1 << i << setw(4) << setprecision(3) << setiosflags(ios::fixed) 
              << " " << Vop << " " << gainVop << " " << dVop 
              << " " << -p0 << " " << pe0 << " " << fQADC << " " << fQADCEr << endl;
        for (int j=0; j<ge[i]->GetN(); j++) 
            outf2 << setw(4) << setprecision(3) << setiosflags(ios::fixed) 
                  << " " << ge[i]->GetX()[j] 
                  << " " << ge[i]->GetY()[j] 
                  << " " << ge[i]->GetErrorY(j);
        outf2 << endl;
#endif
    }

    //outf.close();
	cVbd[0]->Print(dir+"fig_breakdown1.pdf");
	cVbd[1]->Print(dir+"fig_breakdown2.pdf");

    TCanvas *c4 = new TCanvas("c4","c4",canW,canH);
    c4->Divide(2,1);
	c4->cd(1);
    gVbd->GetXaxis()->SetLimits(-2,66);
    gVbd->SetMaximum(54);
    gVbd->SetMinimum(50);
    gVbd->Draw("ap*");
	c4->cd(2);
    gGain->GetXaxis()->SetLimits(-2,66);
    gGain->SetMaximum( 700000);
    gGain->SetMinimum( 300000);
    gGain->Draw("ap*");

	c4->Print(dir+"fig_operation64ch.pdf");
}

