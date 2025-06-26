.class public final Lcom/noinnion/android/greader/ui/premium/PremiumActivity$h;
.super Ljm7;
.source "SourceFile"

# interfaces
.implements Lpl7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity$h;->e:Lcom/noinnion/android/greader/ui/premium/PremiumActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ljm7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "throwable"

    .line 2
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Purchases could not be retrieved"

    .line 3
    invoke-static {v0, p1}, Ljy6;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity$h;->e:Lcom/noinnion/android/greader/ui/premium/PremiumActivity;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-static {p1, v0, v0, v1, v2}, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->E(Lcom/noinnion/android/greader/ui/premium/PremiumActivity;ZZZI)V

    .line 5
    sget-object p1, Lyj7;->a:Lyj7;

    return-object p1
.end method
