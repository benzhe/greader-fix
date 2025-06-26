.class public final Lzc6$c;
.super Lgj6;
.source "SourceFile"

# interfaces
.implements Lbk6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzc6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzc6$c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgj6<",
        "Lzc6$c;",
        "Lzc6$c$a;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lzc6$c;

.field public static final DOCUMENTS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lik6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lik6<",
            "Lzc6$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private documents_:Ljj6$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj6$d<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lzc6$c;

    invoke-direct {v0}, Lzc6$c;-><init>()V

    .line 2
    sput-object v0, Lzc6$c;->DEFAULT_INSTANCE:Lzc6$c;

    .line 3
    const-class v1, Lzc6$c;

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
    iput-object v0, p0, Lzc6$c;->documents_:Ljj6$d;

    return-void
.end method

.method public static synthetic B()Lzc6$c;
    .locals 1

    .line 1
    sget-object v0, Lzc6$c;->DEFAULT_INSTANCE:Lzc6$c;

    return-object v0
.end method

.method public static C(Lzc6$c;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget-object v0, p0, Lzc6$c;->documents_:Ljj6$d;

    .line 4
    invoke-interface {v0}, Ljj6$d;->F0()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-static {v0}, Lgj6;->v(Ljj6$d;)Ljj6$d;

    move-result-object v0

    iput-object v0, p0, Lzc6$c;->documents_:Ljj6$d;

    .line 6
    :cond_0
    iget-object p0, p0, Lzc6$c;->documents_:Ljj6$d;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static D()Lzc6$c;
    .locals 1

    .line 1
    sget-object v0, Lzc6$c;->DEFAULT_INSTANCE:Lzc6$c;

    return-object v0
.end method

.method public static G()Lzc6$c$a;
    .locals 1

    .line 1
    sget-object v0, Lzc6$c;->DEFAULT_INSTANCE:Lzc6$c;

    invoke-virtual {v0}, Lgj6;->q()Lgj6$a;

    move-result-object v0

    check-cast v0, Lzc6$c$a;

    return-object v0
.end method


# virtual methods
.method public E(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzc6$c;->documents_:Ljj6$d;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public F()I
    .locals 1

    .line 1
    iget-object v0, p0, Lzc6$c;->documents_:Ljj6$d;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
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
    sget-object p1, Lzc6$c;->PARSER:Lik6;

    if-nez p1, :cond_1

    .line 4
    const-class p2, Lzc6$c;

    monitor-enter p2

    .line 5
    :try_start_0
    sget-object p1, Lzc6$c;->PARSER:Lik6;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lgj6$b;

    sget-object p3, Lzc6$c;->DEFAULT_INSTANCE:Lzc6$c;

    invoke-direct {p1, p3}, Lgj6$b;-><init>(Lgj6;)V

    .line 7
    sput-object p1, Lzc6$c;->PARSER:Lik6;

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
    sget-object p1, Lzc6$c;->DEFAULT_INSTANCE:Lzc6$c;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lzc6$c$a;

    invoke-direct {p1, p3}, Lzc6$c$a;-><init>(Lzc6$a;)V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lzc6$c;

    invoke-direct {p1}, Lzc6$c;-><init>()V

    return-object p1

    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "documents_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0002\u0002\u0001\u0000\u0001\u0000\u0002\u021a"

    .line 12
    sget-object p3, Lzc6$c;->DEFAULT_INSTANCE:Lzc6$c;

    .line 13
    new-instance v0, Lnk6;

    invoke-direct {v0, p3, p2, p1}, Lnk6;-><init>(Lak6;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :pswitch_5
    return-object p3

    .line 14
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
