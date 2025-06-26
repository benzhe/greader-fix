.class public final synthetic Lyf5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls96;


# instance fields
.field public final a:Leg5;

.field public final b:Lsf5;


# direct methods
.method public constructor <init>(Leg5;Lsf5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyf5;->a:Leg5;

    iput-object p2, p0, Lyf5;->b:Lsf5;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lyf5;->a:Leg5;

    iget-object v1, p0, Lyf5;->b:Lsf5;

    .line 1
    sget v2, Leg5;->g:I

    .line 2
    iget-object v2, v1, Lsf5;->e:Lwf5;

    .line 3
    new-instance v3, Lug5;

    invoke-direct {v3, v1, v0}, Lug5;-><init>(Lsf5;Ltf5;)V

    .line 4
    invoke-interface {v2, v3}, Lwf5;->a(Ltf5;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
