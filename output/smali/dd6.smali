.class public final Ldd6;
.super Lgj6;
.source "SourceFile"

# interfaces
.implements Lbk6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldd6$b;,
        Ldd6$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgj6<",
        "Ldd6;",
        "Ldd6$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DATABASE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Ldd6;

.field public static final LABELS_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lik6; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lik6<",
            "Ldd6;",
            ">;"
        }
    .end annotation
.end field

.field public static final STREAM_ID_FIELD_NUMBER:I = 0x2

.field public static final STREAM_TOKEN_FIELD_NUMBER:I = 0x4

.field public static final WRITES_FIELD_NUMBER:I = 0x3


# instance fields
.field private database_:Ljava/lang/String;

.field private labels_:Luj6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luj6<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private streamId_:Ljava/lang/String;

.field private streamToken_:Lqi6;

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
    new-instance v0, Ldd6;

    invoke-direct {v0}, Ldd6;-><init>()V

    .line 2
    sput-object v0, Ldd6;->DEFAULT_INSTANCE:Ldd6;

    .line 3
    const-class v1, Ldd6;

    invoke-static {v1, v0}, Lgj6;->z(Ljava/lang/Class;Lgj6;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lgj6;-><init>()V

    .line 2
    sget-object v0, Luj6;->f:Luj6;

    .line 3
    iput-object v0, p0, Ldd6;->labels_:Luj6;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Ldd6;->database_:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Ldd6;->streamId_:Ljava/lang/String;

    .line 6
    sget-object v0, Lmk6;->h:Lmk6;

    .line 7
    iput-object v0, p0, Ldd6;->writes_:Ljj6$d;

    .line 8
    sget-object v0, Lqi6;->f:Lqi6;

    iput-object v0, p0, Ldd6;->streamToken_:Lqi6;

    return-void
.end method

.method public static synthetic B()Ldd6;
    .locals 1

    .line 1
    sget-object v0, Ldd6;->DEFAULT_INSTANCE:Ldd6;

    return-object v0
.end method

.method public static C(Ldd6;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Ldd6;->database_:Ljava/lang/String;

    return-void
.end method

.method public static D(Ldd6;Lqi6;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Ldd6;->streamToken_:Lqi6;

    return-void
.end method

.method public static E(Ldd6;Lcd6;)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget-object v0, p0, Ldd6;->writes_:Ljj6$d;

    .line 4
    invoke-interface {v0}, Ljj6$d;->F0()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-static {v0}, Lgj6;->v(Ljj6$d;)Ljj6$d;

    move-result-object v0

    iput-object v0, p0, Ldd6;->writes_:Ljj6$d;

    .line 6
    :cond_0
    iget-object p0, p0, Ldd6;->writes_:Ljj6$d;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static F()Ldd6;
    .locals 1

    .line 1
    sget-object v0, Ldd6;->DEFAULT_INSTANCE:Ldd6;

    return-object v0
.end method

.method public static G()Ldd6$b;
    .locals 1

    .line 1
    sget-object v0, Ldd6;->DEFAULT_INSTANCE:Ldd6;

    invoke-virtual {v0}, Lgj6;->q()Lgj6$a;

    move-result-object v0

    check-cast v0, Ldd6$b;

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

    :pswitch_0
    return-object p3

    .line 3
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_2
    sget-object p1, Ldd6;->PARSER:Lik6;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Ldd6;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Ldd6;->PARSER:Lik6;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lgj6$b;

    sget-object p3, Ldd6;->DEFAULT_INSTANCE:Ldd6;

    invoke-direct {p1, p3}, Lgj6$b;-><init>(Lgj6;)V

    .line 8
    sput-object p1, Ldd6;->PARSER:Lik6;

    .line 9
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

    .line 10
    :pswitch_3
    sget-object p1, Ldd6;->DEFAULT_INSTANCE:Ldd6;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "database_"

    aput-object v0, p1, p3

    const-string p3, "streamId_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "writes_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 11
    const-class p3, Lcd6;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "streamToken_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "labels_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    sget-object p3, Ldd6$c;->a:Ltj6;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0001\u0001\u0000\u0001\u0208\u0002\u0208\u0003\u001b\u0004\n\u00052"

    .line 12
    sget-object p3, Ldd6;->DEFAULT_INSTANCE:Ldd6;

    .line 13
    new-instance v0, Lnk6;

    invoke-direct {v0, p3, p2, p1}, Lnk6;-><init>(Lak6;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 14
    :pswitch_5
    new-instance p1, Ldd6$b;

    invoke-direct {p1, p3}, Ldd6$b;-><init>(Ldd6$a;)V

    return-object p1

    .line 15
    :pswitch_6
    new-instance p1, Ldd6;

    invoke-direct {p1}, Ldd6;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
