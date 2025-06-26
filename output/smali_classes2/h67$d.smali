.class public Lh67$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh67;->b(Lx47;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lx47;

.field public final synthetic f:Lh67;


# direct methods
.method public constructor <init>(Lh67;Lx47;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh67$d;->f:Lh67;

    iput-object p2, p0, Lh67$d;->e:Lx47;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lh67$d;->f:Lh67;

    .line 2
    iget-object v0, v0, Lh67;->h:Lc87$a;

    .line 3
    iget-object v1, p0, Lh67$d;->e:Lx47;

    invoke-interface {v0, v1}, Lc87$a;->a(Lx47;)V

    return-void
.end method
