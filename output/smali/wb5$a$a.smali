.class public Lwb5$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwb5$a;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Landroid/widget/AutoCompleteTextView;

.field public final synthetic f:Lwb5$a;


# direct methods
.method public constructor <init>(Lwb5$a;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwb5$a$a;->f:Lwb5$a;

    iput-object p2, p0, Lwb5$a$a;->e:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lwb5$a$a;->e:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lwb5$a$a;->f:Lwb5$a;

    iget-object v1, v1, Lwb5$a;->e:Lwb5;

    invoke-static {v1, v0}, Lwb5;->g(Lwb5;Z)V

    .line 3
    iget-object v1, p0, Lwb5$a$a;->f:Lwb5$a;

    iget-object v1, v1, Lwb5$a;->e:Lwb5;

    .line 4
    iput-boolean v0, v1, Lwb5;->i:Z

    return-void
.end method
