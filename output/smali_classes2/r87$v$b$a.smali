.class public Lr87$v$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr87$v$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lr87$v$b;


# direct methods
.method public constructor <init>(Lr87$v$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr87$v$b$a;->e:Lr87$v$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lr87$v$b$a;->e:Lr87$v$b;

    iget-object v0, v0, Lr87$v$b;->e:Lr87$v;

    iget-object v1, v0, Lr87$v;->b:Lr87;

    iget-object v0, v0, Lr87$v;->a:Lr87$w;

    iget v0, v0, Lr87$w;->d:I

    add-int/lit8 v0, v0, 0x1

    .line 2
    sget-object v2, Lr87;->w:Li47$f;

    .line 3
    invoke-virtual {v1, v0}, Lr87;->q(I)Lr87$w;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lr87$v$b$a;->e:Lr87$v$b;

    iget-object v1, v1, Lr87$v$b;->e:Lr87$v;

    iget-object v1, v1, Lr87$v;->b:Lr87;

    .line 5
    invoke-virtual {v1, v0}, Lr87;->s(Lr87$w;)V

    return-void
.end method
