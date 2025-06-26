.class public Luw6$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luw6;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La0;

.field public final synthetic b:Luw6;


# direct methods
.method public constructor <init>(Luw6;La0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Luw6$b;->b:Luw6;

    iput-object p2, p0, Luw6$b;->a:La0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Luw6$b;->a:La0;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, La0;->f(I)Landroid/widget/Button;

    move-result-object p1

    .line 2
    new-instance v0, Luw6$b$a;

    invoke-direct {v0, p0}, Luw6$b$a;-><init>(Luw6$b;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
