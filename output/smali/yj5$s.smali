.class public final Lyj5$s;
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
    name = "s"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lyn5<",
        "Ltk5$d$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lyj5$s;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lyj5$s;

    invoke-direct {v0}, Lyj5$s;-><init>()V

    sput-object v0, Lyj5$s;->a:Lyj5$s;

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
    check-cast p1, Ltk5$d$e;

    check-cast p2, Lzn5;

    .line 2
    invoke-virtual {p1}, Ltk5$d$e;->b()I

    move-result v0

    const-string v1, "platform"

    invoke-interface {p2, v1, v0}, Lzn5;->d(Ljava/lang/String;I)Lzn5;

    .line 3
    invoke-virtual {p1}, Ltk5$d$e;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "version"

    invoke-interface {p2, v1, v0}, Lzn5;->g(Ljava/lang/String;Ljava/lang/Object;)Lzn5;

    .line 4
    invoke-virtual {p1}, Ltk5$d$e;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "buildVersion"

    invoke-interface {p2, v1, v0}, Lzn5;->g(Ljava/lang/String;Ljava/lang/Object;)Lzn5;

    .line 5
    invoke-virtual {p1}, Ltk5$d$e;->d()Z

    move-result p1

    const-string v0, "jailbroken"

    invoke-interface {p2, v0, p1}, Lzn5;->b(Ljava/lang/String;Z)Lzn5;

    return-void
.end method
