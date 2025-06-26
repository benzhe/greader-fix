.class public Loz5$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li06$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Loz5;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Loz5;


# direct methods
.method public constructor <init>(Loz5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loz5$c;->a:Loz5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Loz5$c;->a:Loz5;

    iget-object v0, v0, Loz5;->d:Llz5;

    .line 2
    iget-object v1, v0, Llz5;->n:Lj96;

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Llz5;->o:Luy5;

    if-eqz v0, :cond_0

    .line 4
    sget-object v1, Luy5$a;->f:Luy5$a;

    check-cast v0, Lj36;

    invoke-virtual {v0, v1}, Lj36;->e(Luy5$a;)Le45;

    .line 5
    :cond_0
    iget-object v0, p0, Loz5$c;->a:Loz5;

    iget-object v1, v0, Loz5;->d:Llz5;

    iget-object v0, v0, Loz5;->b:Landroid/app/Activity;

    invoke-static {v1, v0}, Llz5;->a(Llz5;Landroid/app/Activity;)V

    return-void
.end method
