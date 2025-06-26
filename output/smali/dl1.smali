.class public final synthetic Ldl1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkb0;


# instance fields
.field public final a:Lbl1;


# direct methods
.method public constructor <init>(Lbl1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldl1;->a:Lbl1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0

    iget-object p2, p0, Ldl1;->a:Lbl1;

    check-cast p1, Lxw0;

    .line 1
    iget-object p1, p2, Lbl1;->d:Lek1;

    invoke-interface {p1}, Lek1;->l()V

    return-void
.end method
