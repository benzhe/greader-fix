.class public Lr87$v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr87$v;->e(Lx47;Lz57$a;Li47;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lr87$w;

.field public final synthetic f:Lr87$v;


# direct methods
.method public constructor <init>(Lr87$v;Lr87$w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr87$v$a;->f:Lr87$v;

    iput-object p2, p0, Lr87$v$a;->e:Lr87$w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lr87$v$a;->f:Lr87$v;

    iget-object v0, v0, Lr87$v;->b:Lr87;

    iget-object v1, p0, Lr87$v$a;->e:Lr87$w;

    .line 2
    sget-object v2, Lr87;->w:Li47$f;

    .line 3
    invoke-virtual {v0, v1}, Lr87;->s(Lr87$w;)V

    return-void
.end method
