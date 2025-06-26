.class public final Ldy5;
.super Lgj6;
.source "SourceFile"

# interfaces
.implements Lbk6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldy5$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgj6<",
        "Ldy5;",
        "Ldy5$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CAMPAIGN_ID_FIELD_NUMBER:I = 0x2

.field public static final CLIENT_APP_FIELD_NUMBER:I = 0x3

.field public static final CLIENT_TIMESTAMP_MILLIS_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Ldy5;

.field public static final DISMISS_TYPE_FIELD_NUMBER:I = 0x6

.field public static final ENGAGEMENTMETRICS_DELIVERY_RETRY_COUNT_FIELD_NUMBER:I = 0xa

.field public static final EVENT_TYPE_FIELD_NUMBER:I = 0x5

.field public static final FETCH_ERROR_REASON_FIELD_NUMBER:I = 0x8

.field public static final FIAM_SDK_VERSION_FIELD_NUMBER:I = 0x9

.field private static volatile PARSER:Lik6; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lik6<",
            "Ldy5;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROJECT_NUMBER_FIELD_NUMBER:I = 0x1

.field public static final RENDER_ERROR_REASON_FIELD_NUMBER:I = 0x7


# instance fields
.field private bitField0_:I

.field private campaignId_:Ljava/lang/String;

.field private clientApp_:Ley5;

.field private clientTimestampMillis_:J

.field private engagementMetricsDeliveryRetryCount_:I

.field private eventCase_:I

.field private event_:Ljava/lang/Object;

.field private fiamSdkVersion_:Ljava/lang/String;

.field private projectNumber_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ldy5;

    invoke-direct {v0}, Ldy5;-><init>()V

    .line 2
    sput-object v0, Ldy5;->DEFAULT_INSTANCE:Ldy5;

    .line 3
    const-class v1, Ldy5;

    invoke-static {v1, v0}, Lgj6;->z(Ljava/lang/Class;Lgj6;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lgj6;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ldy5;->eventCase_:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Ldy5;->projectNumber_:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Ldy5;->campaignId_:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Ldy5;->fiamSdkVersion_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic B()Ldy5;
    .locals 1

    .line 1
    sget-object v0, Ldy5;->DEFAULT_INSTANCE:Ldy5;

    return-object v0
.end method

.method public static C(Ldy5;J)V
    .locals 1

    .line 1
    iget v0, p0, Ldy5;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Ldy5;->bitField0_:I

    .line 2
    iput-wide p1, p0, Ldy5;->clientTimestampMillis_:J

    return-void
.end method

.method public static D(Ldy5;Lmy5;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget p1, p1, Lmy5;->e:I

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Ldy5;->event_:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 4
    iput p1, p0, Ldy5;->eventCase_:I

    return-void
.end method

.method public static E(Ldy5;Lly5;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget p1, p1, Lly5;->e:I

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Ldy5;->event_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 4
    iput p1, p0, Ldy5;->eventCase_:I

    return-void
.end method

.method public static F(Ldy5;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget v0, p0, Ldy5;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldy5;->bitField0_:I

    .line 4
    iput-object p1, p0, Ldy5;->projectNumber_:Ljava/lang/String;

    return-void
.end method

.method public static G(Ldy5;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget v0, p0, Ldy5;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Ldy5;->bitField0_:I

    .line 4
    iput-object p1, p0, Ldy5;->fiamSdkVersion_:Ljava/lang/String;

    return-void
.end method

.method public static H(Ldy5;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget v0, p0, Ldy5;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Ldy5;->bitField0_:I

    .line 4
    iput-object p1, p0, Ldy5;->campaignId_:Ljava/lang/String;

    return-void
.end method

.method public static I(Ldy5;Ley5;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Ldy5;->clientApp_:Ley5;

    .line 3
    iget p1, p0, Ldy5;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Ldy5;->bitField0_:I

    return-void
.end method

.method public static J()Ldy5$b;
    .locals 1

    .line 1
    sget-object v0, Ldy5;->DEFAULT_INSTANCE:Ldy5;

    invoke-virtual {v0}, Lgj6;->q()Lgj6$a;

    move-result-object v0

    check-cast v0, Ldy5$b;

    return-object v0
.end method


# virtual methods
.method public final r(Lgj6$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 3
    :pswitch_0
    sget-object p1, Ldy5;->PARSER:Lik6;

    if-nez p1, :cond_1

    .line 4
    const-class p2, Ldy5;

    monitor-enter p2

    .line 5
    :try_start_0
    sget-object p1, Ldy5;->PARSER:Lik6;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lgj6$b;

    sget-object p3, Ldy5;->DEFAULT_INSTANCE:Ldy5;

    invoke-direct {p1, p3}, Lgj6$b;-><init>(Lgj6;)V

    .line 7
    sput-object p1, Ldy5;->PARSER:Lik6;

    .line 8
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 9
    :pswitch_1
    sget-object p1, Ldy5;->DEFAULT_INSTANCE:Ldy5;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Ldy5$b;

    invoke-direct {p1, p3}, Ldy5$b;-><init>(Ldy5$a;)V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Ldy5;

    invoke-direct {p1}, Ldy5;-><init>()V

    return-object p1

    :pswitch_4
    const/16 p1, 0xd

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "event_"

    aput-object v0, p1, p3

    const-string p3, "eventCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "bitField0_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "projectNumber_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "campaignId_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "clientApp_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "clientTimestampMillis_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    .line 12
    sget-object p3, Lmy5$a;->a:Ljj6$b;

    aput-object p3, p1, p2

    const/16 p2, 0x8

    .line 13
    sget-object p3, Lly5$a;->a:Ljj6$b;

    aput-object p3, p1, p2

    const/16 p2, 0x9

    .line 14
    sget-object p3, Lgz5$a;->a:Ljj6$b;

    aput-object p3, p1, p2

    const/16 p2, 0xa

    .line 15
    sget-object p3, Lqy5$a;->a:Ljj6$b;

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "fiamSdkVersion_"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "engagementMetricsDeliveryRetryCount_"

    aput-object p3, p1, p2

    const-string p2, "\u0001\n\u0001\u0001\u0001\n\n\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1009\u0002\u0004\u1002\u0003\u0005\u103f\u0000\u0006\u103f\u0000\u0007\u103f\u0000\u0008\u103f\u0000\t\u1008\u0008\n\u1004\t"

    .line 16
    sget-object p3, Ldy5;->DEFAULT_INSTANCE:Ldy5;

    .line 17
    new-instance v0, Lnk6;

    invoke-direct {v0, p3, p2, p1}, Lnk6;-><init>(Lak6;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :pswitch_5
    return-object p3

    .line 18
    :pswitch_6
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
