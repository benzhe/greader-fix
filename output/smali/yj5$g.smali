.class public final Lyj5$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyn5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyj5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lyn5<",
        "Ltk5$d$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lyj5$g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lyj5$g;

    invoke-direct {v0}, Lyj5$g;-><init>()V

    sput-object v0, Lyj5$g;->a:Lyj5$g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ltk5$d$c;

    check-cast p2, Lzn5;

    .line 2
    invoke-virtual {p1}, Ltk5$d$c;->a()I

    move-result v0

    const-string v1, "arch"

    invoke-interface {p2, v1, v0}, Lzn5;->d(Ljava/lang/String;I)Lzn5;

    .line 3
    invoke-virtual {p1}, Ltk5$d$c;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "model"

    invoke-interface {p2, v1, v0}, Lzn5;->g(Ljava/lang/String;Ljava/lang/Object;)Lzn5;

    .line 4
    invoke-virtual {p1}, Ltk5$d$c;->b()I

    move-result v0

    const-string v1, "cores"

    invoke-interface {p2, v1, v0}, Lzn5;->d(Ljava/lang/String;I)Lzn5;

    .line 5
    invoke-virtual {p1}, Ltk5$d$c;->g()J

    move-result-wide v0

    const-string v2, "ram"

    invoke-interface {p2, v2, v0, v1}, Lzn5;->c(Ljava/lang/String;J)Lzn5;

    .line 6
    invoke-virtual {p1}, Ltk5$d$c;->c()J

    move-result-wide v0

    const-string v2, "diskSpace"

    invoke-interface {p2, v2, v0, v1}, Lzn5;->c(Ljava/lang/String;J)Lzn5;

    .line 7
    invoke-virtual {p1}, Ltk5$d$c;->i()Z

    move-result v0

    const-string v1, "simulator"

    invoke-interface {p2, v1, v0}, Lzn5;->b(Ljava/lang/String;Z)Lzn5;

    .line 8
    invoke-virtual {p1}, Ltk5$d$c;->h()I

    move-result v0

    const-string v1, "state"

    invoke-interface {p2, v1, v0}, Lzn5;->d(Ljava/lang/String;I)Lzn5;

    .line 9
    invoke-virtual {p1}, Ltk5$d$c;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "manufacturer"

    invoke-interface {p2, v1, v0}, Lzn5;->g(Ljava/lang/String;Ljava/lang/Object;)Lzn5;

    .line 10
    invoke-virtual {p1}, Ltk5$d$c;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, "modelClass"

    invoke-interface {p2, v0, p1}, Lzn5;->g(Ljava/lang/String;Ljava/lang/Object;)Lzn5;

    return-void
.end method
