.class public Li77;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ld67;

.field public final synthetic f:Z

.field public final synthetic g:Ld77;


# direct methods
.method public constructor <init>(Ld77;Ld67;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Li77;->g:Ld77;

    iput-object p2, p0, Li77;->e:Ld67;

    iput-boolean p3, p0, Li77;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Li77;->g:Ld77;

    .line 2
    iget-object v0, v0, Ld77;->r:Lb77;

    .line 3
    iget-object v1, p0, Li77;->e:Ld67;

    iget-boolean v2, p0, Li77;->f:Z

    invoke-virtual {v0, v1, v2}, Lb77;->c(Ljava/lang/Object;Z)V

    return-void
.end method
