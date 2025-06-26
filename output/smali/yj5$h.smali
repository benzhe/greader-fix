.class public final Lyj5$h;
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
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lyn5<",
        "Ltk5$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lyj5$h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lyj5$h;

    invoke-direct {v0}, Lyj5$h;-><init>()V

    sput-object v0, Lyj5$h;->a:Lyj5$h;

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
    check-cast p1, Ltk5$d;

    check-cast p2, Lzn5;

    .line 2
    invoke-virtual {p1}, Ltk5$d;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "generator"

    invoke-interface {p2, v1, v0}, Lzn5;->g(Ljava/lang/String;Ljava/lang/Object;)Lzn5;

    .line 3
    invoke-virtual {p1}, Ltk5$d;->g()Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v1, Ltk5;->a:Ljava/nio/charset/Charset;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "identifier"

    .line 6
    invoke-interface {p2, v1, v0}, Lzn5;->g(Ljava/lang/String;Ljava/lang/Object;)Lzn5;

    .line 7
    invoke-virtual {p1}, Ltk5$d;->i()J

    move-result-wide v0

    const-string v2, "startedAt"

    invoke-interface {p2, v2, v0, v1}, Lzn5;->c(Ljava/lang/String;J)Lzn5;

    .line 8
    invoke-virtual {p1}, Ltk5$d;->c()Ljava/lang/Long;

    move-result-object v0

    const-string v1, "endedAt"

    invoke-interface {p2, v1, v0}, Lzn5;->g(Ljava/lang/String;Ljava/lang/Object;)Lzn5;

    .line 9
    invoke-virtual {p1}, Ltk5$d;->k()Z

    move-result v0

    const-string v1, "crashed"

    invoke-interface {p2, v1, v0}, Lzn5;->b(Ljava/lang/String;Z)Lzn5;

    .line 10
    invoke-virtual {p1}, Ltk5$d;->a()Ltk5$d$a;

    move-result-object v0

    const-string v1, "app"

    invoke-interface {p2, v1, v0}, Lzn5;->g(Ljava/lang/String;Ljava/lang/Object;)Lzn5;

    .line 11
    invoke-virtual {p1}, Ltk5$d;->j()Ltk5$d$f;

    move-result-object v0

    const-string v1, "user"

    invoke-interface {p2, v1, v0}, Lzn5;->g(Ljava/lang/String;Ljava/lang/Object;)Lzn5;

    .line 12
    invoke-virtual {p1}, Ltk5$d;->h()Ltk5$d$e;

    move-result-object v0

    const-string v1, "os"

    invoke-interface {p2, v1, v0}, Lzn5;->g(Ljava/lang/String;Ljava/lang/Object;)Lzn5;

    .line 13
    invoke-virtual {p1}, Ltk5$d;->b()Ltk5$d$c;

    move-result-object v0

    const-string v1, "device"

    invoke-interface {p2, v1, v0}, Lzn5;->g(Ljava/lang/String;Ljava/lang/Object;)Lzn5;

    .line 14
    invoke-virtual {p1}, Ltk5$d;->d()Luk5;

    move-result-object v0

    const-string v1, "events"

    invoke-interface {p2, v1, v0}, Lzn5;->g(Ljava/lang/String;Ljava/lang/Object;)Lzn5;

    .line 15
    invoke-virtual {p1}, Ltk5$d;->f()I

    move-result p1

    const-string v0, "generatorType"

    invoke-interface {p2, v0, p1}, Lzn5;->d(Ljava/lang/String;I)Lzn5;

    return-void
.end method
