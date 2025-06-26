.class public Luh$a$a;
.super Lth;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luh$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf4;

.field public final synthetic b:Luh$a;


# direct methods
.method public constructor <init>(Luh$a;Lf4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Luh$a$a;->b:Luh$a;

    iput-object p2, p0, Luh$a$a;->a:Lf4;

    invoke-direct {p0}, Lth;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lqh;)V
    .locals 2

    .line 1
    iget-object v0, p0, Luh$a$a;->a:Lf4;

    iget-object v1, p0, Luh$a$a;->b:Luh$a;

    iget-object v1, v1, Luh$a;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lm4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p1, p0}, Lqh;->x(Lqh$d;)Lqh;

    return-void
.end method
