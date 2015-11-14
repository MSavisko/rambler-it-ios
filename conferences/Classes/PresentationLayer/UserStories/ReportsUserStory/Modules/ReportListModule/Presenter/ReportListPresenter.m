//
//  ReportListPresenter.m
//  Conferences
//
//  Created by Karpushin Artem on 08/11/15.
//  Copyright 2015 Rambler. All rights reserved.
//

#import "ReportListPresenter.h"
#import "ReportListViewInput.h"
#import "ReportListInteractorInput.h"
#import "ReportListRouterInput.h"

@implementation ReportListPresenter

#pragma mark - ReportListViewOutput

- (void)setupView {
    NSArray *events = [self.interactor obtainEventList];
    [self.interactor updateEventList];
    [self.view setupViewWithEventList:events];
}

#pragma mark - EventListInteractorOutput

- (void)didUpdateEventList:(NSArray *)events {
    [self.view updateViewWithEventList:events];
}

@end