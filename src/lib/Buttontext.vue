<template>
  <div :class="wrapClasses">
    <template v-if="type !== 'textarea'">
      <div :class="[prefixCls + '-group-prepend']" v-if="prepend" v-show="slotReady"><slot name="prepend"></slot></div>
      <i class="ivu-icon" :class="['ivu-icon-ios-close-circle', prefixCls + '-icon', prefixCls + '-icon-clear' , prefixCls + '-icon-normal']" v-if="clearable && currentValue && !itemDisabled" @click="handleClear"></i>
      <i class="ivu-icon" :class="['ivu-icon-' + icon, prefixCls + '-icon', prefixCls + '-icon-normal']" v-else-if="icon" @click="handleIconClick"></i>
      <i class="ivu-icon ivu-icon-ios-search" :class="[prefixCls + '-icon', prefixCls + '-icon-normal', prefixCls + '-search-icon']" v-else-if="search && enterButton === false" @click="handleSearch"></i>
      <span class="ivu-input-suffix" v-else-if="showSuffix"><slot name="suffix"><i class="ivu-icon" :class="['ivu-icon-' + suffix]" v-if="suffix"></i></slot></span>
      <span class="ivu-input-word-count" v-else-if="showWordLimit">{{ textLength }}/{{ upperLimit }}</span>
      <span class="ivu-input-suffix" v-else-if="password" @click="handleToggleShowPassword">
                <i class="ivu-icon ivu-icon-ios-eye-outline" v-if="showPassword"></i>
                <i class="ivu-icon ivu-icon-ios-eye-off-outline" v-else></i>
            </span>
      <transition name="fade">
        <i class="ivu-icon ivu-icon-ios-loading ivu-load-loop" :class="[prefixCls + '-icon', prefixCls + '-icon-validate']" v-if="!icon"></i>
      </transition>
      <input
          :id="elementId"
          :autocomplete="autocomplete"
          :spellcheck="spellcheck"
          ref="input"
          :type="currentType"
          :class="inputClasses"
          :placeholder="placeholder"
          :disabled="itemDisabled"
          :maxlength="maxlength"
          :readonly="readonly"
          :name="name"
          :value="currentValue"
          :number="number"
          :autofocus="autofocus"
          @keyup.enter="handleEnter"
          @keyup="handleKeyup"
          @keypress="handleKeypress"
          @keydown="handleKeydown"
          @focus="handleFocus"
          @blur="handleBlur"
          @compositionstart="handleComposition"
          @compositionupdate="handleComposition"
          @compositionend="handleComposition"
          @input="handleInput"
          @change="handleChange">
      <div :class="[prefixCls + '-group-append']" v-if="append" v-show="slotReady"><slot name="append"></slot></div>
      <div :class="[prefixCls + '-group-append', prefixCls + '-search']" v-else-if="search && enterButton" @click="handleSearch">
        <i class="ivu-icon ivu-icon-ios-search" v-if="enterButton === true"></i>
        <template v-else>{{ enterButton }}</template>
      </div>
      <span class="ivu-input-prefix" v-else-if="showPrefix"><slot name="prefix"><i class="ivu-icon" :class="['ivu-icon-' + prefix]" v-if="prefix"></i></slot></span>
    </template>
    <template v-else>
            <textarea
                :id="elementId"
                :wrap="wrap"
                :autocomplete="autocomplete"
                :spellcheck="spellcheck"
                ref="textarea"
                :class="textareaClasses"
                :style="textareaStyles"
                :placeholder="placeholder"
                :disabled="itemDisabled"
                :rows="rows"
                :maxlength="maxlength"
                :readonly="readonly"
                :name="name"
                :value="currentValue"
                :autofocus="autofocus"
                @keyup.enter="handleEnter"
                @keyup="handleKeyup"
                @keypress="handleKeypress"
                @keydown="handleKeydown"
                @focus="handleFocus"
                @blur="handleBlur"
                @compositionstart="handleComposition"
                @compositionupdate="handleComposition"
                @compositionend="handleComposition"
                @input="handleInput">
            </textarea>
      <span class="ivu-input-word-count" v-if="showWordLimit">{{ textLength }}/{{ upperLimit }}</span>
    </template>
  </div>
</template>
