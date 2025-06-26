.class public final Lpg6;
.super Lgj6;
.source "SourceFile"

# interfaces
.implements Lbk6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpg6$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgj6<",
        "Lpg6;",
        "Lpg6$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ALREADY_SEEN_CAMPAIGNS_FIELD_NUMBER:I = 0x3

.field public static final CLIENT_SIGNALS_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lpg6;

.field private static volatile PARSER:Lik6; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lik6<",
            "Lpg6;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROJECT_NUMBER_FIELD_NUMBER:I = 0x1

.field public static final REQUESTING_CLIENT_APP_FIELD_NUMBER:I = 0x2


# instance fields
.field private alreadySeenCampaigns_:Ljj6$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj6$d<",
            "Lmg6;",
            ">;"
        }
    .end annotation
.end field

.field private clientSignals_:Lme5;

.field private projectNumber_:Ljava/lang/String;

.field private requestingClientApp_:Log6;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lpg6;

    invoke-direct {v0}, Lpg6;-><init>()V

    .line 2
    sput-object v0, Lpg6;->DEFAULT_INSTANCE:Lpg6;

    .line 3
    const-class v1, Lpg6;

    invoke-static {v1, v0}, Lgj6;->z(Ljava/lang/Class;Lgj6;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lgj6;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lpg6;->projectNumber_:Ljava/lang/String;

    .line 3
    sget-object v0, Lmk6;->h:Lmk6;

    .line 4
    iput-object v0, p0, Lpg6;->alreadySeenCampaigns_:Ljj6$d;

    return-void
.end method

.method public static synthetic B()Lpg6;
    .locals 1

    .line 1
    sget-object v0, Lpg6;->DEFAULT_INSTANCE:Lpg6;

    return-object v0
.end method

.method public static C(Lpg6;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lpg6;->projectNumber_:Ljava/lang/String;

    return-void
.end method

.method public static D(Lpg6;Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lpg6;->alreadySeenCampaigns_:Ljj6$d;

    .line 2
    invoke-interface {v0}, Ljj6$d;->F0()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lgj6;->v(Ljj6$d;)Ljj6$d;

    move-result-object v0

    iput-object v0, p0, Lpg6;->alreadySeenCampaigns_:Ljj6$d;

    .line 4
    :cond_0
    iget-object p0, p0, Lpg6;->alreadySeenCampaigns_:Ljj6$d;

    invoke-static {p1, p0}, Lii6;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static E(Lpg6;Lme5;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lpg6;->clientSignals_:Lme5;

    return-void
.end method

.method public static F(Lpg6;Log6;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lpg6;->requestingClientApp_:Log6;

    return-void
.end method

.method public static G()Lpg6;
    .locals 1

    .line 1
    sget-object v0, Lpg6;->DEFAULT_INSTANCE:Lpg6;

    return-object v0
.end method

.method public static H()Lpg6$b;
    .locals 1

    .line 1
    sget-object v0, Lpg6;->DEFAULT_INSTANCE:Lpg6;

    invoke-virtual {v0}, Lgj6;->q()Lgj6$a;

    move-result-object v0

    check-cast v0, Lpg6$b;

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
    sget-object p1, Lpg6;->PARSER:Lik6;

    if-nez p1, :cond_1

    .line 4
    const-class p2, Lpg6;

    monitor-enter p2

    .line 5
    :try_start_0
    sget-object p1, Lpg6;->PARSER:Lik6;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lgj6$b;

    sget-object p3, Lpg6;->DEFAULT_INSTANCE:Lpg6;

    invoke-direct {p1, p3}, Lgj6$b;-><init>(Lgj6;)V

    .line 7
    sput-object p1, Lpg6;->PARSER:Lik6;

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
    sget-object p1, Lpg6;->DEFAULT_INSTANCE:Lpg6;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lpg6$b;

    invoke-direct {p1, p3}, Lpg6$b;-><init>(Lpg6$a;)V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lpg6;

    invoke-direct {p1}, Lpg6;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "projectNumber_"

    aput-object v0, p1, p3

    const-string p3, "requestingClientApp_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "alreadySeenCampaigns_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 12
    const-class p3, Lmg6;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "clientSignals_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u0208\u0002\t\u0003\u001b\u0004\t"

    .line 13
    sget-object p3, Lpg6;->DEFAULT_INSTANCE:Lpg6;

    .line 14
    new-instance v0, Lnk6;

    invoke-direct {v0, p3, p2, p1}, Lnk6;-><init>(Lak6;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :pswitch_5
    return-object p3

    .line 15
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
