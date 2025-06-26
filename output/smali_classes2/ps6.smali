.class public final Lps6;
.super Ljm7;
.source "SourceFile"

# interfaces
.implements Lpl7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljm7;",
        "Lpl7<",
        "Ljava/lang/Throwable;",
        "Lyj7;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/premium/PremiumActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/premium/PremiumActivity;)V
    .locals 0

    iput-object p1, p0, Lps6;->e:Lcom/noinnion/android/greader/ui/premium/PremiumActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ljm7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4
    iget-object p1, p0, Lps6;->e:Lcom/noinnion/android/greader/ui/premium/PremiumActivity;

    const v0, 0x7f1100cb

    invoke-static {p1, v0}, Ln56;->W1(Landroid/content/Context;I)V

    .line 5
    sget-object p1, Lyj7;->a:Lyj7;

    return-object p1
.end method
