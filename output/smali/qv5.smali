.class public Lqv5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Low5;

.field public final b:Lex5;

.field public final c:Law5;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "date"

    const-string v2, "x-google-backends"

    const-string v3, "x-google-netmon-label"

    const-string v4, "x-google-service"

    const-string v5, "x-google-gfe-request-trace"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lqv5;->d:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Laq5;Lex5;Lop5;Landroid/content/Context;Ljw5;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lqv5;->b:Lex5;

    .line 3
    new-instance v0, Low5;

    .line 4
    iget-object v1, p1, Laq5;->a:Lwt5;

    .line 5
    invoke-direct {v0, v1}, Low5;-><init>(Lwt5;)V

    iput-object v0, p0, Lqv5;->a:Low5;

    .line 6
    new-instance v0, Law5;

    move-object v2, v0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    move-object v6, p1

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Law5;-><init>(Lex5;Landroid/content/Context;Lop5;Laq5;Ljw5;)V

    iput-object v0, p0, Lqv5;->c:Law5;

    return-void
.end method

.method public static a(Lx47;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lx47;->a:Lx47$b;

    .line 2
    iget p0, p0, Lx47$b;->e:I

    .line 3
    sget-object v0, Lzo5$a;->w:Landroid/util/SparseArray;

    sget-object v1, Lzo5$a;->h:Lzo5$a;

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzo5$a;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown gRPC status code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 p0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 6
    :pswitch_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Treated status OK as error"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
