.class public final Lkg6;
.super Lgj6;
.source "SourceFile"

# interfaces
.implements Lbk6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkg6$a;,
        Lkg6$b;,
        Lkg6$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgj6<",
        "Lkg6;",
        "Lkg6$a;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CONTENT_FIELD_NUMBER:I = 0x3

.field public static final DATA_BUNDLE_FIELD_NUMBER:I = 0x8

.field private static final DEFAULT_INSTANCE:Lkg6;

.field public static final EXPERIMENTAL_PAYLOAD_FIELD_NUMBER:I = 0x2

.field public static final IS_TEST_CAMPAIGN_FIELD_NUMBER:I = 0x7

.field private static volatile PARSER:Lik6; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lik6<",
            "Lkg6;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIORITY_FIELD_NUMBER:I = 0x4

.field public static final TRIGGERING_CONDITIONS_FIELD_NUMBER:I = 0x5

.field public static final VANILLA_PAYLOAD_FIELD_NUMBER:I = 0x1


# instance fields
.field private content_:Lcz5;

.field private dataBundle_:Luj6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luj6<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isTestCampaign_:Z

.field private payloadCase_:I

.field private payload_:Ljava/lang/Object;

.field private priority_:Lhy5;

.field private triggeringConditions_:Ljj6$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj6$d<",
            "Lky5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkg6;

    invoke-direct {v0}, Lkg6;-><init>()V

    .line 2
    sput-object v0, Lkg6;->DEFAULT_INSTANCE:Lkg6;

    .line 3
    const-class v1, Lkg6;

    invoke-static {v1, v0}, Lgj6;->z(Ljava/lang/Class;Lgj6;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lgj6;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lkg6;->payloadCase_:I

    .line 3
    sget-object v0, Luj6;->f:Luj6;

    .line 4
    iput-object v0, p0, Lkg6;->dataBundle_:Luj6;

    .line 5
    sget-object v0, Lmk6;->h:Lmk6;

    .line 6
    iput-object v0, p0, Lkg6;->triggeringConditions_:Ljj6$d;

    return-void
.end method

.method public static synthetic B()Lkg6;
    .locals 1

    .line 1
    sget-object v0, Lkg6;->DEFAULT_INSTANCE:Lkg6;

    return-object v0
.end method


# virtual methods
.method public C()Lcz5;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg6;->content_:Lcz5;

    if-nez v0, :cond_0

    invoke-static {}, Lcz5;->E()Lcz5;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public D()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkg6;->dataBundle_:Luj6;

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public E()Ljg6;
    .locals 2

    .line 1
    iget v0, p0, Lkg6;->payloadCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lkg6;->payload_:Ljava/lang/Object;

    check-cast v0, Ljg6;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Ljg6;->G()Ljg6;

    move-result-object v0

    return-object v0
.end method

.method public F()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkg6;->isTestCampaign_:Z

    return v0
.end method

.method public G()Lkg6$c;
    .locals 2

    .line 1
    iget v0, p0, Lkg6;->payloadCase_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lkg6$c;->f:Lkg6$c;

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Lkg6$c;->e:Lkg6$c;

    goto :goto_0

    .line 4
    :cond_2
    sget-object v0, Lkg6$c;->g:Lkg6$c;

    :goto_0
    return-object v0
.end method

.method public H()Lhy5;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg6;->priority_:Lhy5;

    if-nez v0, :cond_0

    invoke-static {}, Lhy5;->C()Lhy5;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public I()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lky5;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkg6;->triggeringConditions_:Ljj6$d;

    return-object v0
.end method

.method public J()Llg6;
    .locals 2

    .line 1
    iget v0, p0, Lkg6;->payloadCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lkg6;->payload_:Ljava/lang/Object;

    check-cast v0, Llg6;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Llg6;->G()Llg6;

    move-result-object v0

    return-object v0
.end method

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
    sget-object p1, Lkg6;->PARSER:Lik6;

    if-nez p1, :cond_1

    .line 4
    const-class p2, Lkg6;

    monitor-enter p2

    .line 5
    :try_start_0
    sget-object p1, Lkg6;->PARSER:Lik6;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lgj6$b;

    sget-object p3, Lkg6;->DEFAULT_INSTANCE:Lkg6;

    invoke-direct {p1, p3}, Lgj6$b;-><init>(Lgj6;)V

    .line 7
    sput-object p1, Lkg6;->PARSER:Lik6;

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
    sget-object p1, Lkg6;->DEFAULT_INSTANCE:Lkg6;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lkg6$a;

    invoke-direct {p1, p3}, Lkg6$a;-><init>(Lig6;)V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lkg6;

    invoke-direct {p1}, Lkg6;-><init>()V

    return-object p1

    :pswitch_4
    const/16 p1, 0xb

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "payload_"

    aput-object v0, p1, p3

    const-string p3, "payloadCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 12
    const-class p3, Llg6;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Ljg6;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "content_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "priority_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "triggeringConditions_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-class p3, Lky5;

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "isTestCampaign_"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "dataBundle_"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    sget-object p3, Lkg6$b;->a:Ltj6;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0007\u0001\u0000\u0001\u0008\u0007\u0001\u0001\u0000\u0001<\u0000\u0002<\u0000\u0003\t\u0004\t\u0005\u001b\u0007\u0007\u00082"

    .line 13
    sget-object p3, Lkg6;->DEFAULT_INSTANCE:Lkg6;

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
