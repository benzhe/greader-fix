.class public final Lgr$f;
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
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lyn5<",
        "Ltr;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lgr$f;

.field public static final b:Lxn5;

.field public static final c:Lxn5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lgr$f;

    invoke-direct {v0}, Lgr$f;-><init>()V

    sput-object v0, Lgr$f;->a:Lgr$f;

    const-string v0, "networkType"

    .line 2
    invoke-static {v0}, Lxn5;->a(Ljava/lang/String;)Lxn5;

    move-result-object v0

    sput-object v0, Lgr$f;->b:Lxn5;

    const-string v0, "mobileSubtype"

    .line 3
    invoke-static {v0}, Lxn5;->a(Ljava/lang/String;)Lxn5;

    move-result-object v0

    sput-object v0, Lgr$f;->c:Lxn5;

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
    check-cast p1, Ltr;

    check-cast p2, Lzn5;

    .line 2
    sget-object v0, Lgr$f;->b:Lxn5;

    invoke-virtual {p1}, Ltr;->b()Ltr$b;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lzn5;->h(Lxn5;Ljava/lang/Object;)Lzn5;

    .line 3
    sget-object v0, Lgr$f;->c:Lxn5;

    invoke-virtual {p1}, Ltr;->a()Ltr$a;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lzn5;->h(Lxn5;Ljava/lang/Object;)Lzn5;

    return-void
.end method
