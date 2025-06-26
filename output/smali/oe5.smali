.class public final synthetic Loe5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls96;


# instance fields
.field public final a:Lpe5;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lpe5;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loe5;->a:Lpe5;

    iput-object p2, p0, Loe5;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Loe5;->a:Lpe5;

    iget-object v1, p0, Loe5;->b:Landroid/content/Context;

    .line 1
    sget-object v2, Lpe5;->j:Ljava/lang/Object;

    .line 2
    new-instance v2, Lua6;

    .line 3
    invoke-virtual {v0}, Lpe5;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lpe5;->d:Leg5;

    const-class v4, Lmo5;

    .line 4
    invoke-virtual {v0, v4}, Lpf5;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmo5;

    invoke-direct {v2, v1, v3, v0}, Lua6;-><init>(Landroid/content/Context;Ljava/lang/String;Lmo5;)V

    return-object v2
.end method
