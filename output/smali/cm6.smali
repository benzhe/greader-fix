.class public final synthetic Lcm6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lhm6;


# direct methods
.method public synthetic constructor <init>(Lhm6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm6;->a:Lhm6;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lcm6;->a:Lhm6;

    .line 1
    iput-boolean p2, p1, Lhm6;->f:Z

    return-void
.end method
