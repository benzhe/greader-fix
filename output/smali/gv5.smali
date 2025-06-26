.class public final Lgv5;
.super Lgj6;
.source "SourceFile"

# interfaces
.implements Lbk6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgv5$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgj6<",
        "Lgv5;",
        "Lgv5$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final BASE_WRITES_FIELD_NUMBER:I = 0x4

.field public static final BATCH_ID_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lgv5;

.field public static final LOCAL_WRITE_TIME_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lik6; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lik6<",
            "Lgv5;",
            ">;"
        }
    .end annotation
.end field

.field public static final WRITES_FIELD_NUMBER:I = 0x2


# instance fields
.field private baseWrites_:Ljj6$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj6$d<",
            "Lcd6;",
            ">;"
        }
    .end annotation
.end field

.field private batchId_:I

.field private localWriteTime_:Lwk6;

.field private writes_:Ljj6$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj6$d<",
            "Lcd6;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgv5;

    invoke-direct {v0}, Lgv5;-><init>()V

    .line 2
    sput-object v0, Lgv5;->DEFAULT_INSTANCE:Lgv5;

    .line 3
    const-class v1, Lgv5;

    invoke-static {v1, v0}, Lgj6;->z(Ljava/lang/Class;Lgj6;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lgj6;-><init>()V

    .line 2
    sget-object v0, Lmk6;->h:Lmk6;

    .line 3
    iput-object v0, p0, Lgv5;->writes_:Ljj6$d;

    .line 4
    iput-object v0, p0, Lgv5;->baseWrites_:Ljj6$d;

    return-void
.end method

.method public static synthetic B()Lgv5;
    .locals 1

    .line 1
    sget-object v0, Lgv5;->DEFAULT_INSTANCE:Lgv5;

    return-object v0
.end method

.method public static C(Lgv5;I)V
    .locals 0

    .line 1
    iput p1, p0, Lgv5;->batchId_:I

    return-void
.end method

.method public static D(Lgv5;Lcd6;)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget-object v0, p0, Lgv5;->baseWrites_:Ljj6$d;

    .line 4
    invoke-interface {v0}, Ljj6$d;->F0()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-static {v0}, Lgj6;->v(Ljj6$d;)Ljj6$d;

    move-result-object v0

    iput-object v0, p0, Lgv5;->baseWrites_:Ljj6$d;

    .line 6
    :cond_0
    iget-object p0, p0, Lgv5;->baseWrites_:Ljj6$d;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static E(Lgv5;Lcd6;)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget-object v0, p0, Lgv5;->writes_:Ljj6$d;

    .line 4
    invoke-interface {v0}, Ljj6$d;->F0()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-static {v0}, Lgj6;->v(Ljj6$d;)Ljj6$d;

    move-result-object v0

    iput-object v0, p0, Lgv5;->writes_:Ljj6$d;

    .line 6
    :cond_0
    iget-object p0, p0, Lgv5;->writes_:Ljj6$d;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static F(Lgv5;Lwk6;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lgv5;->localWriteTime_:Lwk6;

    return-void
.end method

.method public static M()Lgv5$b;
    .locals 1

    .line 1
    sget-object v0, Lgv5;->DEFAULT_INSTANCE:Lgv5;

    invoke-virtual {v0}, Lgj6;->q()Lgj6$a;

    move-result-object v0

    check-cast v0, Lgv5$b;

    return-object v0
.end method

.method public static N(Lqi6;)Lgv5;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkj6;
        }
    .end annotation

    .line 1
    sget-object v0, Lgv5;->DEFAULT_INSTANCE:Lgv5;

    .line 2
    invoke-static {}, Lyi6;->a()Lyi6;

    move-result-object v1

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lqi6;->A()Lri6;

    move-result-object p0

    .line 4
    invoke-static {v0, p0, v1}, Lgj6;->y(Lgj6;Lri6;Lyi6;)Lgj6;

    move-result-object v0
    :try_end_0
    .catch Lkj6; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    .line 5
    :try_start_1
    invoke-virtual {p0, v1}, Lri6;->a(I)V
    :try_end_1
    .catch Lkj6; {:try_start_1 .. :try_end_1} :catch_0

    .line 6
    invoke-static {v0}, Lgj6;->p(Lgj6;)Lgj6;

    .line 7
    invoke-static {v0}, Lgj6;->p(Lgj6;)Lgj6;

    .line 8
    check-cast v0, Lgv5;

    return-object v0

    :catch_0
    move-exception p0

    .line 9
    :try_start_2
    throw p0
    :try_end_2
    .catch Lkj6; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    .line 10
    throw p0
.end method

.method public static O([B)Lgv5;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkj6;
        }
    .end annotation

    .line 1
    sget-object v0, Lgv5;->DEFAULT_INSTANCE:Lgv5;

    invoke-static {v0, p0}, Lgj6;->x(Lgj6;[B)Lgj6;

    move-result-object p0

    check-cast p0, Lgv5;

    return-object p0
.end method


# virtual methods
.method public G(I)Lcd6;
    .locals 1

    .line 1
    iget-object v0, p0, Lgv5;->baseWrites_:Ljj6$d;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcd6;

    return-object p1
.end method

.method public H()I
    .locals 1

    .line 1
    iget-object v0, p0, Lgv5;->baseWrites_:Ljj6$d;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public I()I
    .locals 1

    .line 1
    iget v0, p0, Lgv5;->batchId_:I

    return v0
.end method

.method public J()Lwk6;
    .locals 1

    .line 1
    iget-object v0, p0, Lgv5;->localWriteTime_:Lwk6;

    if-nez v0, :cond_0

    invoke-static {}, Lwk6;->E()Lwk6;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public K(I)Lcd6;
    .locals 1

    .line 1
    iget-object v0, p0, Lgv5;->writes_:Ljj6$d;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcd6;

    return-object p1
.end method

.method public L()I
    .locals 1

    .line 1
    iget-object v0, p0, Lgv5;->writes_:Ljj6$d;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final r(Lgj6$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    const-class p2, Lcd6;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 3
    :pswitch_0
    sget-object p1, Lgv5;->PARSER:Lik6;

    if-nez p1, :cond_1

    .line 4
    const-class p2, Lgv5;

    monitor-enter p2

    .line 5
    :try_start_0
    sget-object p1, Lgv5;->PARSER:Lik6;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lgj6$b;

    sget-object p3, Lgv5;->DEFAULT_INSTANCE:Lgv5;

    invoke-direct {p1, p3}, Lgj6$b;-><init>(Lgj6;)V

    .line 7
    sput-object p1, Lgv5;->PARSER:Lik6;

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
    sget-object p1, Lgv5;->DEFAULT_INSTANCE:Lgv5;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lgv5$b;

    invoke-direct {p1, v0}, Lgv5$b;-><init>(Lgv5$a;)V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lgv5;

    invoke-direct {p1}, Lgv5;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "batchId_"

    aput-object v1, p1, v0

    const-string v0, "writes_"

    aput-object v0, p1, p3

    const/4 p3, 0x2

    aput-object p2, p1, p3

    const/4 p3, 0x3

    const-string v0, "localWriteTime_"

    aput-object v0, p1, p3

    const/4 p3, 0x4

    const-string v0, "baseWrites_"

    aput-object v0, p1, p3

    const/4 p3, 0x5

    aput-object p2, p1, p3

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0002\u0000\u0001\u0004\u0002\u001b\u0003\t\u0004\u001b"

    .line 12
    sget-object p3, Lgv5;->DEFAULT_INSTANCE:Lgv5;

    .line 13
    new-instance v0, Lnk6;

    invoke-direct {v0, p3, p2, p1}, Lnk6;-><init>(Lak6;Ljava/lang/String;[Ljava/lang/Object;)V

    :pswitch_5
    return-object v0

    .line 14
    :pswitch_6
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

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
