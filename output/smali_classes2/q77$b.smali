.class public final Lq77$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq57$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq77;-><init>(Lf57;Lb67;Ln57$a;Lh87;Lqd5;Ljava/util/List;Ld97;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Ld97;


# direct methods
.method public constructor <init>(Lq77;Ld97;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lq77$b;->a:Ld97;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lq57;
    .locals 2

    .line 1
    new-instance v0, Lq57;

    iget-object v1, p0, Lq77$b;->a:Ld97;

    invoke-direct {v0, v1}, Lq57;-><init>(Ld97;)V

    return-object v0
.end method
