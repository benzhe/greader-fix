.class public final Lyj5$e;
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
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lyn5<",
        "Ltk5$d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lyj5$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lyj5$e;

    invoke-direct {v0}, Lyj5$e;-><init>()V

    sput-object v0, Lyj5$e;->a:Lyj5$e;

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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ltk5$d$a;

    check-cast p2, Lzn5;

    .line 2
    invoke-virtual {p1}, Ltk5$d$a;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "identifier"

    invoke-interface {p2, v1, v0}, Lzn5;->g(Ljava/lang/String;Ljava/lang/Object;)Lzn5;

    .line 3
    invoke-virtual {p1}, Ltk5$d$a;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "version"

    invoke-interface {p2, v1, v0}, Lzn5;->g(Ljava/lang/String;Ljava/lang/Object;)Lzn5;

    .line 4
    invoke-virtual {p1}, Ltk5$d$a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "displayVersion"

    invoke-interface {p2, v1, v0}, Lzn5;->g(Ljava/lang/String;Ljava/lang/Object;)Lzn5;

    .line 5
    invoke-virtual {p1}, Ltk5$d$a;->f()Ltk5$d$a$a;

    move-result-object v0

    const-string v1, "organization"

    invoke-interface {p2, v1, v0}, Lzn5;->g(Ljava/lang/String;Ljava/lang/Object;)Lzn5;

    .line 6
    invoke-virtual {p1}, Ltk5$d$a;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "installationUuid"

    invoke-interface {p2, v1, v0}, Lzn5;->g(Ljava/lang/String;Ljava/lang/Object;)Lzn5;

    .line 7
    invoke-virtual {p1}, Ltk5$d$a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "developmentPlatform"

    invoke-interface {p2, v1, v0}, Lzn5;->g(Ljava/lang/String;Ljava/lang/Object;)Lzn5;

    .line 8
    invoke-virtual {p1}, Ltk5$d$a;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "developmentPlatformVersion"

    invoke-interface {p2, v0, p1}, Lzn5;->g(Ljava/lang/String;Ljava/lang/Object;)Lzn5;

    return-void
.end method
