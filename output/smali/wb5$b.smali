.class public Lwb5$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwb5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lwb5;


# direct methods
.method public constructor <init>(Lwb5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwb5$b;->e:Lwb5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lwb5$b;->e:Lwb5;

    iget-object p1, p1, Lbc5;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconActivated(Z)V

    if-nez p2, :cond_0

    .line 2
    iget-object p1, p0, Lwb5$b;->e:Lwb5;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lwb5;->g(Lwb5;Z)V

    .line 3
    iget-object p1, p0, Lwb5$b;->e:Lwb5;

    .line 4
    iput-boolean p2, p1, Lwb5;->i:Z

    :cond_0
    return-void
.end method
