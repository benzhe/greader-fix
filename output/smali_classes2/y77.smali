.class public final Ly77;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lq77$u;


# direct methods
.method public constructor <init>(Lq77$u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly77;->e:Lq77$u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ly77;->e:Lq77$u;

    iget-object v0, v0, Lq77$u;->e:Ld77;

    sget-object v1, Lq77;->g0:Lx47;

    invoke-virtual {v0, v1}, Ld77;->b(Lx47;)V

    return-void
.end method
