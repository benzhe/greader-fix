.class public Lg26$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lob7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg26;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lob7<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lg26;


# direct methods
.method public constructor <init>(Lg26;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg26$a;->a:Lg26;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lnb7;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnb7<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Subscribing to analytics events."

    .line 1
    invoke-static {v0}, Ln56;->t1(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lg26$a;->a:Lg26;

    .line 3
    iget-object v1, v0, Lg26;->a:Lbf5;

    .line 4
    new-instance v2, Lk36;

    invoke-direct {v2, p1}, Lk36;-><init>(Lnb7;)V

    const-string p1, "fiam"

    invoke-interface {v1, p1, v2}, Lbf5;->f(Ljava/lang/String;Lbf5$b;)Lbf5$a;

    move-result-object p1

    .line 5
    iput-object p1, v0, Lg26;->c:Lbf5$a;

    return-void
.end method
