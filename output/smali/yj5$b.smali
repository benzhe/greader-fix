.class public final Lyj5$b;
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
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lyn5<",
        "Ltk5;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lyj5$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lyj5$b;

    invoke-direct {v0}, Lyj5$b;-><init>()V

    sput-object v0, Lyj5$b;->a:Lyj5$b;

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
    check-cast p1, Ltk5;

    check-cast p2, Lzn5;

    .line 2
    invoke-virtual {p1}, Ltk5;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdkVersion"

    invoke-interface {p2, v1, v0}, Lzn5;->g(Ljava/lang/String;Ljava/lang/Object;)Lzn5;

    .line 3
    invoke-virtual {p1}, Ltk5;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gmpAppId"

    invoke-interface {p2, v1, v0}, Lzn5;->g(Ljava/lang/String;Ljava/lang/Object;)Lzn5;

    .line 4
    invoke-virtual {p1}, Ltk5;->f()I

    move-result v0

    const-string v1, "platform"

    invoke-interface {p2, v1, v0}, Lzn5;->d(Ljava/lang/String;I)Lzn5;

    .line 5
    invoke-virtual {p1}, Ltk5;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "installationUuid"

    invoke-interface {p2, v1, v0}, Lzn5;->g(Ljava/lang/String;Ljava/lang/Object;)Lzn5;

    .line 6
    invoke-virtual {p1}, Ltk5;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "buildVersion"

    invoke-interface {p2, v1, v0}, Lzn5;->g(Ljava/lang/String;Ljava/lang/Object;)Lzn5;

    .line 7
    invoke-virtual {p1}, Ltk5;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "displayVersion"

    invoke-interface {p2, v1, v0}, Lzn5;->g(Ljava/lang/String;Ljava/lang/Object;)Lzn5;

    .line 8
    invoke-virtual {p1}, Ltk5;->h()Ltk5$d;

    move-result-object v0

    const-string v1, "session"

    invoke-interface {p2, v1, v0}, Lzn5;->g(Ljava/lang/String;Ljava/lang/Object;)Lzn5;

    .line 9
    invoke-virtual {p1}, Ltk5;->e()Ltk5$c;

    move-result-object p1

    const-string v0, "ndkPayload"

    invoke-interface {p2, v0, p1}, Lzn5;->g(Ljava/lang/String;Ljava/lang/Object;)Lzn5;

    return-void
.end method
