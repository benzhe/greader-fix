.class public Ltl6$a;
.super Lo65;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltl6;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic q:Ltl6;


# direct methods
.method public constructor <init>(Ltl6;Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltl6$a;->q:Ltl6;

    invoke-direct {p0, p2, p3}, Lo65;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Ltl6$a;->q:Ltl6;

    .line 2
    iget-object v0, v0, Ltl6;->f:Lhm6;

    .line 3
    invoke-virtual {v0}, Lhm6;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Ltl6$a;->q:Ltl6;

    .line 5
    iget-object v0, v0, Ltl6;->f:Lhm6;

    .line 6
    iget-object v0, v0, Lhm6;->a:Lcom/michaelflisar/gdprdialog/GDPRSetup;

    .line 7
    iget-boolean v0, v0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->o:Z

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p0}, Li0;->dismiss()V

    :cond_1
    return-void
.end method
