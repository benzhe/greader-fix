.class public final Lyj5$m;
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
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lyn5<",
        "Ltk5$d$d$a$b$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lyj5$m;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lyj5$m;

    invoke-direct {v0}, Lyj5$m;-><init>()V

    sput-object v0, Lyj5$m;->a:Lyj5$m;

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
    check-cast p1, Ltk5$d$d$a$b$c;

    check-cast p2, Lzn5;

    .line 2
    invoke-virtual {p1}, Ltk5$d$d$a$b$c;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-interface {p2, v1, v0}, Lzn5;->g(Ljava/lang/String;Ljava/lang/Object;)Lzn5;

    .line 3
    invoke-virtual {p1}, Ltk5$d$d$a$b$c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "code"

    invoke-interface {p2, v1, v0}, Lzn5;->g(Ljava/lang/String;Ljava/lang/Object;)Lzn5;

    .line 4
    invoke-virtual {p1}, Ltk5$d$d$a$b$c;->a()J

    move-result-wide v0

    const-string p1, "address"

    invoke-interface {p2, p1, v0, v1}, Lzn5;->c(Ljava/lang/String;J)Lzn5;

    return-void
.end method
