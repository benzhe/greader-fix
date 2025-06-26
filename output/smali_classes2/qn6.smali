.class public abstract enum Lqn6;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqn6$e;,
        Lqn6$g;,
        Lqn6$f;,
        Lqn6$h;,
        Lqn6$a;,
        Lqn6$c;,
        Lqn6$d;,
        Lqn6$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lqn6;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lqn6;

.field public static final enum f:Lqn6;

.field public static final enum g:Lqn6;

.field public static final enum h:Lqn6;

.field public static final enum i:Lqn6;

.field public static final enum j:Lqn6;

.field public static final enum k:Lqn6;

.field public static final synthetic l:[Lqn6;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [Lqn6;

    new-instance v1, Lqn6$e;

    const-string v2, "PremiumMonthlySubscriptionProductId"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lqn6$e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lqn6;->e:Lqn6;

    aput-object v1, v0, v3

    new-instance v1, Lqn6$g;

    const-string v2, "PremiumYearlySubscriptionProductId"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lqn6$g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lqn6;->f:Lqn6;

    aput-object v1, v0, v3

    new-instance v1, Lqn6$f;

    const-string v2, "PremiumRewardDurationInSeconds"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lqn6$f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lqn6;->g:Lqn6;

    aput-object v1, v0, v3

    new-instance v1, Lqn6$h;

    const-string v2, "UrlPrivacyPolicy"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lqn6$h;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lqn6;->h:Lqn6;

    aput-object v1, v0, v3

    new-instance v1, Lqn6$a;

    const-string v2, "AdBannerFormatNative"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lqn6$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lqn6;->i:Lqn6;

    aput-object v1, v0, v3

    new-instance v1, Lqn6$c;

    const-string v2, "AdInterstitialFreeTrialInSeconds"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lqn6$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lqn6;->j:Lqn6;

    aput-object v1, v0, v3

    new-instance v1, Lqn6$d;

    const-string v2, "AdInterstitialIntervalInSeconds"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lqn6$d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lqn6;->k:Lqn6;

    aput-object v1, v0, v3

    new-instance v1, Lqn6$b;

    const-string v2, "AdInterstitialExtendedIntervalInSeconds"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lqn6$b;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v3

    sput-object v0, Lqn6;->l:[Lqn6;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILgm7;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lqn6;
    .locals 1

    const-class v0, Lqn6;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lqn6;

    return-object p0
.end method

.method public static values()[Lqn6;
    .locals 1

    sget-object v0, Lqn6;->l:[Lqn6;

    invoke-virtual {v0}, [Lqn6;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lqn6;

    return-object v0
.end method


# virtual methods
.method public abstract i()Ljava/lang/Object;
.end method

.method public abstract k()Ljava/lang/String;
.end method
