.class public Lw77;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lc47$j;


# direct methods
.method public constructor <init>(Lq77$u;Lc47$j;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lw77;->e:Lc47$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lw77;->e:Lc47$j;

    sget-object v1, Li37;->i:Li37;

    invoke-static {v1}, Lj37;->a(Li37;)Lj37;

    move-result-object v1

    invoke-interface {v0, v1}, Lc47$j;->a(Lj37;)V

    return-void
.end method
