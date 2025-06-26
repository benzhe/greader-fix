.class public final Lgr$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyn5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lyn5<",
        "Lor;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lgr$b;

.field public static final b:Lxn5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lgr$b;

    invoke-direct {v0}, Lgr$b;-><init>()V

    sput-object v0, Lgr$b;->a:Lgr$b;

    const-string v0, "logRequest"

    .line 2
    invoke-static {v0}, Lxn5;->a(Ljava/lang/String;)Lxn5;

    move-result-object v0

    sput-object v0, Lgr$b;->b:Lxn5;

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
    check-cast p1, Lor;

    check-cast p2, Lzn5;

    .line 2
    sget-object v0, Lgr$b;->b:Lxn5;

    invoke-virtual {p1}, Lor;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lzn5;->h(Lxn5;Ljava/lang/Object;)Lzn5;

    return-void
.end method
