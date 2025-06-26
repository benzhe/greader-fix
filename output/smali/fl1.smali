.class public final synthetic Lfl1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkb0;


# instance fields
.field public final a:Lbl1;


# direct methods
.method public constructor <init>(Lbl1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfl1;->a:Lbl1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    iget-object p2, p0, Lfl1;->a:Lbl1;

    check-cast p1, Lxw0;

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Showing native ads overlay."

    .line 2
    invoke-static {v0}, Lis0;->zzey(Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Lxw0;->getView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p2, Lbl1;->c:Ld31;

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p1, Ld31;->j:Z

    return-void
.end method
