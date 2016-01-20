//
//  KIFUITestActor+EXAdditions.h
//  KIFBootcamp
//
//  Created by Pivotal on 2016-01-20.
//  Copyright © 2016 PIvotal Labs. All rights reserved.
//

#ifndef KIFUITestActor_EXAdditions_h
#define KIFUITestActor_EXAdditions_h

#import <KIF/KIF.h>

@interface KIFUITestActor (EXAdditions)

- (void)navigateToLoginPage;
- (void)returnToLoggedOutHomeScreen;

@end

#endif /* KIFUITestActor_EXAdditions_h */
