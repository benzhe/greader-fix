.class public Lcom/miguelcatalan/materialsearchview/MaterialSearchView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->setMenuItem(Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/miguelcatalan/materialsearchview/MaterialSearchView;


# direct methods
.method public constructor <init>(Lcom/miguelcatalan/materialsearchview/MaterialSearchView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView$c;->a:Lcom/miguelcatalan/materialsearchview/MaterialSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView$c;->a:Lcom/miguelcatalan/materialsearchview/MaterialSearchView;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->c(Z)V

    return v0
.end method
