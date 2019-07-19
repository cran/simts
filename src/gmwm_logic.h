/* Copyright (C) 2014 - 2018  James Balamuta, Stephane Guerrier, Roberto Molinari
 *
 * This file is part of simts R Methods Package
 *
 * The `simts` R package is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * The `simts` R package is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *  
 */

#ifndef GMWM_FUNCTIONS
#define GMWM_FUNCTIONS

arma::vec gmwm_engine(const arma::vec& theta,
                      const std::vector<std::string>& desc, const arma::field<arma::vec>& objdesc, 
                      std::string model_type,
                      arma::vec wv_empir,
                      arma::mat omega,
                      arma::vec scales,
                      bool starting = true);

arma::field<arma::mat> gmwm_update_cpp(arma::vec theta,
                                       const std::vector<std::string>& desc, const arma::field<arma::vec>& objdesc, 
                                       std::string model_type, unsigned int N, double expect_diff, double ranged, 
                                       const arma::mat& orgV, const arma::vec& scales, const arma::mat& wv,
                                       bool starting = true, 
                                       std::string compute_v = "fast", unsigned int K = 1, unsigned int H = 100,
                                       unsigned int G = 1000, 
                                       bool robust=false, double eff = 0.6);
                                      
arma::field<arma::mat> gmwm_master_cpp(arma::vec& data, 
                                       arma::vec theta,
                                       const std::vector<std::string>& desc, const arma::field<arma::vec>& objdesc, 
                                       std::string model_type, bool starting = true,
                                       double alpha = 0.05, 
                                       std::string compute_v = "fast", unsigned int K = 1, unsigned int H = 100,
                                       unsigned int G = 1000, 
                                       bool robust=false, double eff = 0.6);
                                      
#endif