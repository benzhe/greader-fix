.class public final Lzc6$d;
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
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzc6$d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgj6<",
        "Lzc6$d;",
        "Lzc6$d$a;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lzc6$d;

.field public static final PARENT_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lik6; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lik6<",
            "Lzc6$d;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRUCTURED_QUERY_FIELD_NUMBER:I = 0x2


# instance fields
.field private parent_:Ljava/lang/String;

.field private queryTypeCase_:I

.field private queryType_:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lzc6$d;

    invoke-direct {v0}, Lzc6$d;-><init>()V

    .line 2
    sput-object v0, Lzc6$d;->DEFAULT_INSTANCE:Lzc6$d;

    .line 3
    const-class v1, Lzc6$d;

    invoke-static {v1, v0}, Lgj6;->z(Ljava/lang/Class;Lgj6;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lgj6;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lzc6$d;->queryTypeCase_:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lzc6$d;->parent_:Ljava/lang/String;

    return-void
.end method

.method public static B(Lzc6$d;Lyc6;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lzc6$d;->queryType_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 3
    iput p1, p0, Lzc6$d;->queryTypeCase_:I

    return-void
.end method

.method public static synthetic C()Lzc6$d;
    .locals 1

    .line 1
    sget-object v0, Lzc6$d;->DEFAULT_INSTANCE:Lzc6$d;

    return-object v0
.end method

.method public static D(Lzc6$d;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lzc6$d;->parent_:Ljava/lang/String;

    return-void
.end method

.method public static E()Lzc6$d;
    .locals 1

    .line 1
    sget-object v0, Lzc6$d;->DEFAULT_INSTANCE:Lzc6$d;

    return-object v0
.end method

.method public static H()Lzc6$d$a;
    .locals 1

    .line 1
    sget-object v0, Lzc6$d;->DEFAULT_INSTANCE:Lzc6$d;

    invoke-virtual {v0}, Lgj6;->q()Lgj6$a;

    move-result-object v0

    check-cast v0, Lzc6$d$a;

    return-object v0
.end method


# virtual methods
.method public F()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzc6$d;->parent_:Ljava/lang/String;

    return-object v0
.end method

.method public G()Lyc6;
    .locals 2

    .line 1
    iget v0, p0, Lzc6$d;->queryTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lzc6$d;->queryType_:Ljava/lang/Object;

    check-cast v0, Lyc6;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lyc6;->I()Lyc6;

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
    sget-object p1, Lzc6$d;->PARSER:Lik6;

    if-nez p1, :cond_1

    .line 4
    const-class p2, Lzc6$d;

    monitor-enter p2

    .line 5
    :try_start_0
    sget-object p1, Lzc6$d;->PARSER:Lik6;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lgj6$b;

    sget-object p3, Lzc6$d;->DEFAULT_INSTANCE:Lzc6$d;

    invoke-direct {p1, p3}, Lgj6$b;-><init>(Lgj6;)V

    .line 7
    sput-object p1, Lzc6$d;->PARSER:Lik6;

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
    sget-object p1, Lzc6$d;->DEFAULT_INSTANCE:Lzc6$d;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lzc6$d$a;

    invoke-direct {p1, p3}, Lzc6$d$a;-><init>(Lzc6$a;)V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lzc6$d;

    invoke-direct {p1}, Lzc6$d;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "queryType_"

    aput-object v0, p1, p3

    const-string p3, "queryTypeCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "parent_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 12
    const-class p3, Lyc6;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002<\u0000"

    .line 13
    sget-object p3, Lzc6$d;->DEFAULT_INSTANCE:Lzc6$d;

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
