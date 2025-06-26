.class public final Lil6;
.super Lgj6;
.source "SourceFile"

# interfaces
.implements Lbk6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lil6$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgj6<",
        "Lil6;",
        "Lil6$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CODE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lil6;

.field public static final DETAILS_FIELD_NUMBER:I = 0x3

.field public static final MESSAGE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lik6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lik6<",
            "Lil6;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private code_:I

.field private details_:Ljj6$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj6$d<",
            "Lmi6;",
            ">;"
        }
    .end annotation
.end field

.field private message_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lil6;

    invoke-direct {v0}, Lil6;-><init>()V

    .line 2
    sput-object v0, Lil6;->DEFAULT_INSTANCE:Lil6;

    .line 3
    const-class v1, Lil6;

    invoke-static {v1, v0}, Lgj6;->z(Ljava/lang/Class;Lgj6;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lgj6;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lil6;->message_:Ljava/lang/String;

    .line 3
    sget-object v0, Lmk6;->h:Lmk6;

    .line 4
    iput-object v0, p0, Lil6;->details_:Ljj6$d;

    return-void
.end method

.method public static synthetic B()Lil6;
    .locals 1

    .line 1
    sget-object v0, Lil6;->DEFAULT_INSTANCE:Lil6;

    return-object v0
.end method

.method public static D()Lil6;
    .locals 1

    .line 1
    sget-object v0, Lil6;->DEFAULT_INSTANCE:Lil6;

    return-object v0
.end method


# virtual methods
.method public C()I
    .locals 1

    .line 1
    iget v0, p0, Lil6;->code_:I

    return v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lil6;->message_:Ljava/lang/String;

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
    sget-object p1, Lil6;->PARSER:Lik6;

    if-nez p1, :cond_1

    .line 4
    const-class p2, Lil6;

    monitor-enter p2

    .line 5
    :try_start_0
    sget-object p1, Lil6;->PARSER:Lik6;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lgj6$b;

    sget-object p3, Lil6;->DEFAULT_INSTANCE:Lil6;

    invoke-direct {p1, p3}, Lgj6$b;-><init>(Lgj6;)V

    .line 7
    sput-object p1, Lil6;->PARSER:Lik6;

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
    sget-object p1, Lil6;->DEFAULT_INSTANCE:Lil6;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lil6$b;

    invoke-direct {p1, p3}, Lil6$b;-><init>(Lil6$a;)V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lil6;

    invoke-direct {p1}, Lil6;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "code_"

    aput-object v0, p1, p3

    const-string p3, "message_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "details_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 12
    const-class p3, Lmi6;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u0004\u0002\u0208\u0003\u001b"

    .line 13
    sget-object p3, Lil6;->DEFAULT_INSTANCE:Lil6;

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
