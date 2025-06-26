.class public final Lbo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lco;


# direct methods
.method public constructor <init>(Lco;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbo;->g:Lco;

    iput p2, p0, Lbo;->e:I

    iput-object p3, p0, Lbo;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lbo;->g:Lco;

    iget-object v0, v0, Lco;->f:Ldn;

    iget v1, p0, Lbo;->e:I

    .line 1
    iget-object v2, p0, Lbo;->f:Ljava/lang/String;

    .line 2
    new-instance v3, Lin;

    invoke-direct {v3}, Lin;-><init>()V

    .line 3
    iput v1, v3, Lin;->a:I

    .line 4
    iput-object v2, v3, Lin;->b:Ljava/lang/String;

    .line 5
    invoke-interface {v0, v3}, Ldn;->a(Lin;)V

    return-void
.end method
