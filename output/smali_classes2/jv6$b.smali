.class public Ljv6$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/noinnion/android/widget/TouchListView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljv6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljv6;


# direct methods
.method public constructor <init>(Ljv6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljv6$b;->a:Ljv6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public m(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Ljv6$b;->a:Ljv6;

    .line 2
    iget-object v0, v0, Ljv6;->f:Ljv6$d;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    iget-object v1, p0, Ljv6$b;->a:Ljv6;

    .line 5
    iget-object v1, v1, Ljv6;->f:Ljv6$d;

    .line 6
    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 7
    iget-object v1, p0, Ljv6$b;->a:Ljv6;

    .line 8
    iget-object v1, v1, Ljv6;->f:Ljv6$d;

    .line 9
    invoke-virtual {v1, v0, p2}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 10
    iget-object v0, p0, Ljv6$b;->a:Ljv6;

    .line 11
    iget-object v0, v0, Ljv6;->e:Ljv6$e;

    .line 12
    invoke-interface {v0, p1, p2}, Ljv6$e;->m(II)V

    return-void
.end method
