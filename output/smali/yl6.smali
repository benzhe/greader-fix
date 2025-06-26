.class public final synthetic Lyl6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lhm6;

.field public final synthetic f:Landroid/app/Activity;

.field public final synthetic g:Lhm6$a;


# direct methods
.method public synthetic constructor <init>(Lhm6;Landroid/app/Activity;Lhm6$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyl6;->e:Lhm6;

    iput-object p2, p0, Lyl6;->f:Landroid/app/Activity;

    iput-object p3, p0, Lyl6;->g:Lhm6$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lyl6;->e:Lhm6;

    iget-object v0, p0, Lyl6;->f:Landroid/app/Activity;

    iget-object v1, p0, Lyl6;->g:Lhm6$a;

    .line 1
    sget-object v2, Lql6;->f:Lql6;

    iput-object v2, p1, Lhm6;->e:Lql6;

    .line 2
    invoke-virtual {p1, v0, v1}, Lhm6;->d(Landroid/content/Context;Lhm6$a;)V

    return-void
.end method
