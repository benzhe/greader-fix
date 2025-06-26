.class public Lr87$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr87$o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr87;->y(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "m"
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lr87;


# direct methods
.method public constructor <init>(Lr87;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lr87$m;->b:Lr87;

    iput-object p2, p0, Lr87$m;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lr87$w;)V
    .locals 2

    .line 1
    iget-object p1, p1, Lr87$w;->a:Ly57;

    iget-object v0, p0, Lr87$m;->b:Lr87;

    .line 2
    iget-object v0, v0, Lr87;->a:Lj47;

    .line 3
    iget-object v1, p0, Lr87$m;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lj47;->c(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {p1, v0}, Lb97;->l(Ljava/io/InputStream;)V

    return-void
.end method
