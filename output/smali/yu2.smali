.class public final Lyu2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lit2;

.field public final synthetic f:Lwu2;


# direct methods
.method public constructor <init>(Lwu2;Lit2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyu2;->f:Lwu2;

    iput-object p2, p0, Lyu2;->e:Lit2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lyu2;->f:Lwu2;

    iget-object v1, p0, Lyu2;->e:Lit2;

    invoke-static {v0, v1}, Lwu2;->I(Lwu2;Lit2;)V

    return-void
.end method
