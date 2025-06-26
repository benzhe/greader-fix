.class public Lwb5$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwb5;->a()V
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
    iput-object p1, p0, Lwb5$f;->e:Lwb5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lwb5$f;->e:Lwb5;

    iget-object p1, p1, Lbc5;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    check-cast p1, Landroid/widget/AutoCompleteTextView;

    .line 2
    iget-object v0, p0, Lwb5$f;->e:Lwb5;

    invoke-static {v0, p1}, Lwb5;->h(Lwb5;Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method
