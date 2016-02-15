//
//  MortgageCalculations.swift
//  EasyMortgage
//
//  Created by John Lawrence on 2/14/16.
//  Copyright © 2016 LawTech. All rights reserved.
//

import UIKit

class MortgageCalculations: NSObject {

    //TODO: Could replace these inputs with a Mortgage data struct
    func totalInterestForMortgage(rate: Double, length: Int, andAmount amount: Int) -> Double {
        let monthlyPayment = monthlyPaymentFor(rate, length: length, andAmount: amount)
        let totalAmountOfAllPayments = monthlyPayment * Double(length)

        return totalAmountOfAllPayments - Double(amount)
    }

    func monthlyPaymentFor(rate: Double, length: Int, andAmount amount: Int) -> Double {
        let apr = rate / 12
        let totalAmountOfLoan = Double(amount)
        let lengthOfLoanInMonths = Double(length)

        return totalAmountOfLoan * (pow(apr * (1 + apr), lengthOfLoanInMonths) / (pow(1 + apr, lengthOfLoanInMonths) - 1))
    }
    
}
