.class public final Lcom/noinnion/android/greader/ui/login/FeedlyLoginActivity$b;
.super Ljm7;
.source "SourceFile"

# interfaces
.implements Lpl7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/login/FeedlyLoginActivity;->onNewIntent(Landroid/content/Intent;)V
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
.field public final synthetic e:Lcom/noinnion/android/greader/ui/login/FeedlyLoginActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/login/FeedlyLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/login/FeedlyLoginActivity$b;->e:Lcom/noinnion/android/greader/ui/login/FeedlyLoginActivity;

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
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/login/FeedlyLoginActivity$b;->e:Lcom/noinnion/android/greader/ui/login/FeedlyLoginActivity;

    const v0, 0x7f09018e

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById<View>(R.id.loading)"

    invoke-static {p1, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/login/FeedlyLoginActivity$b;->e:Lcom/noinnion/android/greader/ui/login/FeedlyLoginActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/noinnion/android/greader/ui/login/FeedlyLoginActivity;->B(Lcom/noinnion/android/greader/ui/login/FeedlyLoginActivity;Z)V

    .line 5
    sget-object p1, Lyj7;->a:Lyj7;

    return-object p1
.end method
