.class public Ljm6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:Lcom/miguelcatalan/materialsearchview/MaterialSearchView;


# direct methods
.method public constructor <init>(Lcom/miguelcatalan/materialsearchview/MaterialSearchView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljm6;->a:Lcom/miguelcatalan/materialsearchview/MaterialSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Ljm6;->a:Lcom/miguelcatalan/materialsearchview/MaterialSearchView;

    .line 2
    sget p2, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->C:I

    .line 3
    invoke-virtual {p1}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->b()V

    const/4 p1, 0x1

    return p1
.end method
