.class public final Lcom/noinnion/android/greader/ui/login/FeedlyLoginActivity$a;
.super Ljm7;
.source "SourceFile"

# interfaces
.implements Lel7;


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
        "Lel7<",
        "Lyj7;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/login/FeedlyLoginActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/login/FeedlyLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/login/FeedlyLoginActivity$a;->e:Lcom/noinnion/android/greader/ui/login/FeedlyLoginActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljm7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/login/FeedlyLoginActivity$a;->e:Lcom/noinnion/android/greader/ui/login/FeedlyLoginActivity;

    const v1, 0x7f09018e

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById<View>(R.id.loading)"

    invoke-static {v0, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/login/FeedlyLoginActivity$a;->e:Lcom/noinnion/android/greader/ui/login/FeedlyLoginActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/noinnion/android/greader/ui/login/FeedlyLoginActivity;->B(Lcom/noinnion/android/greader/ui/login/FeedlyLoginActivity;Z)V

    .line 3
    sget-object v0, Lyj7;->a:Lyj7;

    return-object v0
.end method
