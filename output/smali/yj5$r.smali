.class public final Lyj5$r;
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
    name = "r"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lyn5<",
        "Ltk5$d$d$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lyj5$r;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lyj5$r;

    invoke-direct {v0}, Lyj5$r;-><init>()V

    sput-object v0, Lyj5$r;->a:Lyj5$r;

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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ltk5$d$d$c;

    check-cast p2, Lzn5;

    .line 2
    invoke-virtual {p1}, Ltk5$d$d$c;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "content"

    invoke-interface {p2, v0, p1}, Lzn5;->g(Ljava/lang/String;Ljava/lang/Object;)Lzn5;

    return-void
.end method
