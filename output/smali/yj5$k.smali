.class public final Lyj5$k;
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
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lyn5<",
        "Ltk5$d$d$a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lyj5$k;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lyj5$k;

    invoke-direct {v0}, Lyj5$k;-><init>()V

    sput-object v0, Lyj5$k;->a:Lyj5$k;

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
    check-cast p1, Ltk5$d$d$a$b;

    check-cast p2, Lzn5;

    .line 2
    invoke-virtual {p1}, Ltk5$d$d$a$b;->d()Luk5;

    move-result-object v0

    const-string v1, "threads"

    invoke-interface {p2, v1, v0}, Lzn5;->g(Ljava/lang/String;Ljava/lang/Object;)Lzn5;

    .line 3
    invoke-virtual {p1}, Ltk5$d$d$a$b;->b()Ltk5$d$d$a$b$b;

    move-result-object v0

    const-string v1, "exception"

    invoke-interface {p2, v1, v0}, Lzn5;->g(Ljava/lang/String;Ljava/lang/Object;)Lzn5;

    .line 4
    invoke-virtual {p1}, Ltk5$d$d$a$b;->c()Ltk5$d$d$a$b$c;

    move-result-object v0

    const-string v1, "signal"

    invoke-interface {p2, v1, v0}, Lzn5;->g(Ljava/lang/String;Ljava/lang/Object;)Lzn5;

    .line 5
    invoke-virtual {p1}, Ltk5$d$d$a$b;->a()Luk5;

    move-result-object p1

    const-string v0, "binaries"

    invoke-interface {p2, v0, p1}, Lzn5;->g(Ljava/lang/String;Ljava/lang/Object;)Lzn5;

    return-void
.end method
