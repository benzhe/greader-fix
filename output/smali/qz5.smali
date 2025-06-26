.class public final Lqz5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljj7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Llz5;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lty5;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljj7<",
            "Lf06;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final c:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lyz5;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Li06;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Li06;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lc06;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Ltz5;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lwz5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljj7;Ljj7;Ljj7;Ljj7;Ljj7;Ljj7;Ljj7;Ljj7;Ljj7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj7<",
            "Lty5;",
            ">;",
            "Ljj7<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljj7<",
            "Lf06;",
            ">;>;>;",
            "Ljj7<",
            "Lyz5;",
            ">;",
            "Ljj7<",
            "Li06;",
            ">;",
            "Ljj7<",
            "Li06;",
            ">;",
            "Ljj7<",
            "Lc06;",
            ">;",
            "Ljj7<",
            "Landroid/app/Application;",
            ">;",
            "Ljj7<",
            "Ltz5;",
            ">;",
            "Ljj7<",
            "Lwz5;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lqz5;->a:Ljj7;

    .line 3
    iput-object p2, p0, Lqz5;->b:Ljj7;

    .line 4
    iput-object p3, p0, Lqz5;->c:Ljj7;

    .line 5
    iput-object p4, p0, Lqz5;->d:Ljj7;

    .line 6
    iput-object p5, p0, Lqz5;->e:Ljj7;

    .line 7
    iput-object p6, p0, Lqz5;->f:Ljj7;

    .line 8
    iput-object p7, p0, Lqz5;->g:Ljj7;

    .line 9
    iput-object p8, p0, Lqz5;->h:Ljj7;

    .line 10
    iput-object p9, p0, Lqz5;->i:Ljj7;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lqz5;->a:Ljj7;

    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lty5;

    iget-object v0, p0, Lqz5;->b:Ljj7;

    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    iget-object v0, p0, Lqz5;->c:Ljj7;

    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lyz5;

    iget-object v0, p0, Lqz5;->d:Ljj7;

    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Li06;

    iget-object v0, p0, Lqz5;->e:Ljj7;

    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Li06;

    iget-object v0, p0, Lqz5;->f:Ljj7;

    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lc06;

    iget-object v0, p0, Lqz5;->g:Ljj7;

    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/Application;

    iget-object v0, p0, Lqz5;->h:Ljj7;

    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ltz5;

    iget-object v0, p0, Lqz5;->i:Ljj7;

    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lwz5;

    .line 2
    new-instance v0, Llz5;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Llz5;-><init>(Lty5;Ljava/util/Map;Lyz5;Li06;Li06;Lc06;Landroid/app/Application;Ltz5;Lwz5;)V

    return-object v0
.end method
