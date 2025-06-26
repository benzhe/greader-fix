.class public final Lyj5$o;
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
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lyn5<",
        "Ltk5$d$d$a$b$d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lyj5$o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lyj5$o;

    invoke-direct {v0}, Lyj5$o;-><init>()V

    sput-object v0, Lyj5$o;->a:Lyj5$o;

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
    check-cast p1, Ltk5$d$d$a$b$d$a;

    check-cast p2, Lzn5;

    .line 2
    invoke-virtual {p1}, Ltk5$d$d$a$b$d$a;->d()J

    move-result-wide v0

    const-string v2, "pc"

    invoke-interface {p2, v2, v0, v1}, Lzn5;->c(Ljava/lang/String;J)Lzn5;

    .line 3
    invoke-virtual {p1}, Ltk5$d$d$a$b$d$a;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "symbol"

    invoke-interface {p2, v1, v0}, Lzn5;->g(Ljava/lang/String;Ljava/lang/Object;)Lzn5;

    .line 4
    invoke-virtual {p1}, Ltk5$d$d$a$b$d$a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-interface {p2, v1, v0}, Lzn5;->g(Ljava/lang/String;Ljava/lang/Object;)Lzn5;

    .line 5
    invoke-virtual {p1}, Ltk5$d$d$a$b$d$a;->c()J

    move-result-wide v0

    const-string v2, "offset"

    invoke-interface {p2, v2, v0, v1}, Lzn5;->c(Ljava/lang/String;J)Lzn5;

    .line 6
    invoke-virtual {p1}, Ltk5$d$d$a$b$d$a;->b()I

    move-result p1

    const-string v0, "importance"

    invoke-interface {p2, v0, p1}, Lzn5;->d(Ljava/lang/String;I)Lzn5;

    return-void
.end method
