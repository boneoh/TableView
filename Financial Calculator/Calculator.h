//
//  Calculator.h
//  FinancialCalculator
//
//  Created by Peter Appleby on 12/1/14.
//  Copyright (c) 2014 Peter Appleby. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>
#import "ASCPaymentStream.h"


@interface Calculator : NSObject   {
   
    IBOutlet NSTableView *tableView;
    IBOutlet NSArrayController *paymentsController;
    
}

@property (nonatomic) NSArray *payments;

- (id)init;

- (void)setPayments:(NSArray *)payments;
- (NSArray *)payments;
- (void)addPayment:(ASCPaymentStream *)p;
- (void)removePayment:(ASCPaymentStream *)p;

@end
